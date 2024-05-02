import simpy
from simpy.core import Environment
from qsimpy.utils.Log import Log
from qsimpy.tasks.TaskStatus import TaskStatus
from typing import Optional
from qiskit import transpile


class QNode(simpy.Resource):
    """A quantum node that can execute quantum tasks. This class inherits from simpy.Resource.
    Attributes:
        - id (int): The ID of the quantum node.
        - qubit_number (int): The number of qubits available on the quantum node.
        - quantum_volume (int): The quantum volume of the quantum node.
        - clops (int): The clops of the quantum node.
        - d1cps (int): The deep-1 circuit operation per second of the quantum node.
        - env (simpy.Environment): The simulation environment.
        - waiting_tasks (list): The list of tasks waiting to be executed on the quantum node.
        - current_tasks (dict): The dictionary of tasks currently being executed on the quantum node.
    """

    def __init__(
        self,
        env,
        id: Optional[int] = None,
        qubit_number: Optional[int] = None,
        quantum_volume: Optional[int] = None,
        clops: Optional[int] = None,
        capacity=1,
    ):
        """
        Initialize a quantum node.
        Args:
            - env (simpy.Environment): The SimPy simulation environment.
            - id (int or None): The ID of the quantum node. If None, a unique ID will be generated.
            - qubit_number (int): The number of qubits available on the quantum node.
            - quantum_volume (int): The quantum volume of the quantum node.
            - clops (int): The clops rating of the quantum node.
            - capacity (int): The maximum number of tasks that can be executed on the quantum node simultaneously.

        """
        super().__init__(env, capacity=capacity)
        # If no ID is provided, generate a unique ID
        if id is None:
            self.id = id(self)
        else:
            self.id = id
        self.env = env
        self.qubit_number = qubit_number
        self.quantum_volume = quantum_volume
        self.clops = clops
        self.d1cps = 0
        self.waiting_tasks = []
        self.current_tasks = {}
        self.next_available_time = -1
        self.completed_tasks = []
        self.failed_tasks = []
        self.total_busy_time = 0
        self.qiskit_backend = None
        self.qnode_name = None
        self.qnode_model = None

    def request(self, task=None):
        """
        Request the quantum node to execute a task.
        """
        # If a task is provided, add it to the waiting_tasks list
        if task:
            self.waiting_tasks.append(task)
        req = super().request()
        # Once the request is processed, remove the task from the waiting_tasks list
        if task:
            self.env.process(self._remove_from_queue(req, task))

        return req

    def _remove_from_queue(self, req, task):
        """
        Remove a task from the waiting_tasks list once the request is processed.
        """
        yield req
        self.waiting_tasks.remove(task)

    def process_task(self, task):
        """
        Process a quantum task
        """
        task.set_status(TaskStatus.RUNNING)
        task.start_running_time = self.env.now
        task.waiting_time = task.start_running_time - task.arrival_time

        execution_time = (task.get_circuit_layers() / self.d1cps) * task.shots
        self.current_tasks[task] = self.env.now  # Set the start time for the task

        Log.print_with_current_time(
            self.env.now,
            f"⌛️ QNode {self.id} started executing QTask {task.id} with {task.get_circuit_layers()} layers for {execution_time} seconds",
        )
        yield self.env.timeout(execution_time)
        self.total_busy_time += execution_time
        del self.current_tasks[task]  # Remove the task
        task.set_status(TaskStatus.DONE)
        task.execution_time = execution_time
        Log.print_with_current_time(
            self.env.now, f"✅ QNode {self.id} finished executing QTask {task.id}"
        )
        self.completed_tasks.append(task)

    def transpile_task(self, task):
        """
        Transpile a quantum task directly using QASM file or used pre-transpiled data from qtask_data
        """
        if task.circuit is not None:
            task.set_status(TaskStatus.VALIDATING)
            transpiled_circuit = transpile(task.circuit, backend=self.qiskit_backend)
            transpiled_cl, _ = task.update_transpiled_circuit(transpiled_circuit)
            Log.print_success(
                f"🔸 QTask {task.id}: Transpiling circuit from {task.circuit_layers} layer to {transpiled_cl} layers to adapt with {self.qnode_name} backend ({self.qubit_number} qubits, CLOPS {self.clops})",
            )
        elif self.qnode_model is not None:
            # Extract transpiled circuit layer from qtask_data
            transpiled_cl = task.qtask_data[self.qnode_model][
                "depth"
            ]  # TODO: + 100k just for testing, remove for production
            Log.print_success(
                f"🔸 QTask {task.id}: Transpiling circuit from {task.circuit_layers} layer to {transpiled_cl} layers to adapt with {self.qnode_name} backend ({self.qubit_number} qubits, CLOPS {self.clops})",
            )
        return transpiled_cl

    def get_waiting_queue_ids(self):
        """Get the IDs of tasks in the waiting queue."""
        return [task.id for task in self.waiting_tasks]

    def get_waiting_queue(self):
        """Get the quantum tasks in the waiting queue."""
        waiting_queue = []
        for task in self.waiting_tasks:
            execution_time = self.get_estimated_execution_time(task)
            waiting_queue.append((task.id, execution_time))
        return waiting_queue

    def get_estimated_execution_time(self, task):
        """Get the estimated execution time for a task."""
        return (task.get_circuit_layers() / self.d1cps) * task.shots

    def get_estimated_waiting_time(self, qtask):
        """Get the estimated waiting time for the quantum node."""
        if self.next_available_time > qtask.arrival_time:
            estimated_waiting_time = self.next_available_time - qtask.arrival_time
            self.next_available_time += self.get_estimated_execution_time(qtask)
        else:
            estimated_waiting_time = 0
            self.next_available_time = (
                qtask.arrival_time + self.get_estimated_execution_time(qtask)
            )
        return estimated_waiting_time

    def get_utilization(self, total_simulation_time):
        return self.total_busy_time / total_simulation_time

    def get_state(self):
        """Get the state of the quantum node."""
        return {
            "id": self.id,
            "qubit_number": self.qubit_number,
            "quantum_volume": self.quantum_volume,
            "clops": self.clops,
            "d1cps": self.d1cps,
            "next_available_time": self.next_available_time,
        }
