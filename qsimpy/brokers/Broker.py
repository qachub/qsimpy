from qsimpy.utils.Log import Log
from qsimpy.tasks.TaskStatus import TaskStatus
from qsimpy.tasks.QTask import QTask
from qsimpy.resources.QNode import QNode


class Broker:
    """
    A broker that assigns quantum tasks to quantum nodes.
    Attributes:
        - env (simpy.Environment): The simulation environment.
        - qnodes (list): The list of quantum nodes that the broker can assign quantum tasks to.
    """

    def __init__(self, env, qnodes, mode):
        self.env = env
        self.qnodes = qnodes
        self.mode=mode

    def time_until_task_arrival(self, qtask):
        """Return the time until the task's arrival time."""
        return max(0, qtask.arrival_time - self.env.now)

    def preprocess_qtask(self, qtask, qnode):
        # Check the constraints of the QTask
        qtask.qnode = qnode
        estimated_waiting_time = -1
        estimated_execution_time = -1
        # Check if QTask constraints are satisfied
        satisfied, errorcode = self.check_qtask_constraints(qtask, qnode)
        if not satisfied:
            try:
                if errorcode == 1:
                    raise QubitInsufficientError(
                        f"Not enough qubits available to execute task ({qnode.qubit_number} < {qtask.qubit_number})"
                    )
            except QubitInsufficientError as e:
                Log.print_error(
                    f"❌ QTask {qtask.id}: Assign this QTask to QNode {qnode.id} failed: {e}",
                )
                qtask.set_status(TaskStatus.ERROR)
                qtask.error = str(e)
                qnode.failed_tasks.append(qtask)
        else:
            # If qiskit_backend is set, transpile the task
            if qnode.qiskit_backend:
                qtask.circuit_layers = qnode.transpile_task(qtask,self.mode)
            # Get estimated waiting time and execution time
            estimated_waiting_time = qnode.get_estimated_waiting_time(qtask,self.mode)
            estimated_execution_time = qnode.get_estimated_execution_time(qtask,self.mode)
            qtask.waiting_time = estimated_waiting_time
            qtask.execution_time = estimated_execution_time
        return qtask, estimated_waiting_time, estimated_execution_time

    def submit_qtask_to_qnode(self, qtask, qnode):
        """Submit a quantum task to a quantum node."""
        # Wait for the task's arrival time
        yield self.env.timeout(self.time_until_task_arrival(qtask))
        Log.print_with_current_time(
            self.env.now,
            f"🛫 QTask {qtask.id} arrived at Broker and will be submit to QNode {qnode.id} in {qtask.waiting_time}s",
        )
        qtask.set_status(TaskStatus.QUEUED)

        with qnode.request(task=qtask) as req:
            yield req
            Log.print_with_current_time(
                self.env.now,
                f"⏩️ QTask {qtask.id} arrived at QNode {qnode.id}, estimated execution time {qtask.execution_time}s",
            )
            yield self.env.process(qnode.process_task(qtask))

        qtask.finish_time = self.env.now
        return qtask.waiting_time + qtask.execution_time

    # TODO: Check QTask constraints for execution on QNode
    def check_qtask_constraints(self, qtask: QTask, qnode: QNode):
        errorcode = 0
        satisfied = True
        # Check if QNode has enough qubits
        if qtask.qubit_number > qnode.qubit_number:
            satisfied = False
            errorcode = 1
        # TODO: Check qubit connectivity and qubit mapping
        return satisfied, errorcode

    # Get observation on current state of all QNodes
    def get_qnodes_state(self):
        return [qnode.get_state() for qnode in self.qnodes]


class QubitInsufficientError(Exception):
    pass
