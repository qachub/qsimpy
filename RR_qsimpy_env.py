
import numpy as np
from numpy.random import default_rng
from qsimpy import Broker, QTask, TaskStatus, IBMQNode, Dataset
import simpy



class QSimPyEnv:
    MAX_ROUNDS = 999  # maximum number of rounds in the QTask dataset
    
    def __init__(
        self,
        dataset=None,
    ):
        """
        Initialize the QSimPyEnv class.

        Args:
            dataset (str): Path to the dataset.
        """
        self.n_qtasks = 25
        self.n_qnodes = 5  # number of qnodes
        self.qtasks = []
        self.qnodes = []

        # Load QTasks dataset
        if dataset is None:
            raise ValueError("Dataset is not specified")
        self.qtask_dataset = Dataset(dataset)
        self.rng = default_rng(seed=22)

        # QSimPy environment
        self.qsp_env = simpy.Environment()
        self.setup_quantum_resources()

        self.round = 1
        self.seed = 22
        self.round_robin_index = 0
        self.results = []  

    def setup_quantum_resources(self):
        # Create a list of 5 IBM QNodes
        qnode_ids = range(self.n_qnodes)
        qnode_names = [
            "washington",
            "kolkata",
            "hanoi",
            "perth",
            "lagos",
        ]
        self.qnodes = [
            IBMQNode.create_ibmq_node(self.qsp_env, qid, qname)
            for qid, qname in zip(qnode_ids, qnode_names)
        ]

        # Create a Broker
        self.broker = Broker(self.qsp_env, self.qnodes)

    def generate_qtasks(self):
        """Generate a list of QTasks from the QTask dataset, following Poisson distribution of arrival time."""
        # QTask IDs
        qtask_ids = list(
            f"{self.round:04d}" + f"{id:02d}" for id in range(self.n_qtasks)
        )

        # Get QTask from the subset of the dataset
        qtasks = self.qtask_dataset.get_subset_data(self.round)

        n_qtasks = len(qtasks)  # number of qtasks
        qtask_arrival = self.rng.uniform(
            low=0.1 + self.round * 60, high=59.9 + self.round * 60, size=n_qtasks
        )
        # Set the arrival time of the first qtask to 0
        qtask_arrival.sort()

        # Extract only the values (dictionaries) from qtasks
        qtask_values = list(qtasks.values())

        self.qtasks = [
            QTask(
                id=tid,
                arrival_time=arrival_time,
                qtask_data=qdata,
            )
            for tid, arrival_time, qdata in zip(qtask_ids, qtask_arrival, qtask_values)
        ]

        # Set current qtask to the first qtask in the list
        if len(self.qtasks) > 0:
            self.current_qtask = self.qtasks.pop(0)
        self.round += 1

    def submit_task_to_qnode(self, qtask):
        # Determine which QNode to assign the QTask to using round robin 
        qnode_id = self.round_robin_index % self.n_qnodes
        self.round_robin_index += 1

        # Preprocess the task
        qtask, waiting_time, execution_time = self.broker.preprocess_qtask(
            qtask, self.qnodes[qnode_id]
        )
        
        if qtask.status == TaskStatus.ERROR:
            # If there's an error, mark the task for rescheduling
            qtask.status = TaskStatus.QUEUED
            qtask.QNode = None
            qtask.rescheduling_count += 1  
            qtask.arrival_time += 1  # Update the arrival time for the next attempt
            
            # Find the correct position to re-insert the task based on arrival time
            index = 0
            while (
                index < len(self.qtasks)
                and self.qtasks[index].arrival_time < qtask.arrival_time
            ):
                index += 1
            self.qtasks.insert(index, qtask)
            #return qtask.rescheduling_count  # Return the updated rescheduling count
            return 
            

        # If no error, submit the task to the QNode
        qtask_execution = self.broker.submit_qtask_to_qnode(
            qtask, self.qnodes[qnode_id]
        )
        self.qsp_env.process(qtask_execution)

        # Collect the result
        self.results.append({
            'qtask_id': qtask.id,
            'qnode_id': qnode_id,
            'waiting_time': waiting_time,
            'execution_time': execution_time,
            'rescheduling_count': qtask.rescheduling_count,  # Store the actual count from the task
        })
        #return qtask.rescheduling_count  # Return the count from the task


    def collect_results(self):
        """Collect and summarize results from the QTask executions."""
        total_qtasks = len(self.results)
        total_waiting_time = sum(result['waiting_time'] for result in self.results)
        total_execution_time = sum(result['execution_time'] for result in self.results)
        total_rescheduling_count = sum(result['rescheduling_count'] for result in self.results)
        
        if total_qtasks > 0:
            avg_waiting_time = total_waiting_time / total_qtasks
            avg_execution_time = total_execution_time / total_qtasks
            avg_rescheduling_count = total_rescheduling_count / total_qtasks
        else:
            avg_waiting_time = avg_execution_time = avg_rescheduling_count = 0

        summary = {
            'total_qtasks': total_qtasks,
            'total_waiting_time': total_waiting_time,
            'total_execution_time': total_execution_time,
            'avg_waiting_time': avg_waiting_time,
            'avg_execution_time': avg_execution_time,
            'avg_rescheduling_count': avg_rescheduling_count,
        }
        return summary
    

dataset_path = "qsimpy\qdataset\qsimpyds_1000_sub_128.csv"


env = QSimPyEnv(dataset=dataset_path)

env.generate_qtasks()

while env.qtasks:
    qtask = env.qtasks.pop(0)
    env.submit_task_to_qnode(qtask)

results_summary = env.collect_results()
print("Simulation Results Summary:")
print(f"Total QTasks: {results_summary['total_qtasks']}")
print(f"Total Waiting Time: {results_summary['total_waiting_time']}")
print(f"Total Execution Time: {results_summary['total_execution_time']}")
print(f"Average Waiting Time: {results_summary['avg_waiting_time']}")
print(f"Average Execution Time: {results_summary['avg_execution_time']}")
print(f"Average Rescheduling Count: {results_summary['avg_rescheduling_count']}")
