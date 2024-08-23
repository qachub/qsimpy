from .TaskStatus import TaskStatus
import qiskit

class QTask:
    """
    A quantum task that can be executed on a quantum node.
    Attributes:
        - id (int): The ID of the quantum task.
        - qubit_number (int): The number of qubits required to execute the quantum task.
        - circuit_layers (int): The number of layers in the quantum circuit.
        - status (TaskStatus): The status of the quantum task.
    """

    def __init__(
        self,
        id: None,
        arrival_time: float,
        qubit_number: int = None,
        circuit_layers: int = None,
        qasm_file: str = None,
        qtask_data: dict = None,
        shots: int = 1024,
    ):
        """
        Initialize a quantum task.
        Args:
            - id (int or None): The ID of the quantum task. If None, a unique ID will be generated.
            - qubit_number (int): The number of qubits required to execute the quantum task.
            - circuit_layers (int): The number of layers in the quantum circuit.
        """
        if id is None:
            self.id = id(self)
        else:
            self.id = id

        # If qasm_file is provided, extract features from it
        if qasm_file is not None:
            self.circuit = qiskit.qasm3.load(qasm_file)
            self.qubit_number = self.circuit.num_qubits
            self.circuit_layers = self.circuit.depth()
            self.gate_counts = self.circuit.count_ops()    

        if qtask_data is not None:
            # Extract features from qtask_data
            self.qtask_data = qtask_data
            self.circuit = None
            self.qubit_number = int(qtask_data["original"]["width"])
            self.circuit_layers = int(qtask_data["original"]["depth"])
            self.gate_counts = qtask_data["original"]["gates"]
            self.application = qtask_data["algorithm"]
        else:
            # Manually set qubit_number and circuit_layers
            self.circuit = None
            self.qubit_number = qubit_number
            self.circuit_layers = circuit_layers
            self.gate_counts = None

        # Original arrival time
        self.init_arrival_time = arrival_time
        # Current arrival time (may change during rescheduling)
        self.arrival_time = arrival_time
        self.status = TaskStatus.INITIALIZING
        self.start_running_time = -1
        self.waiting_time = -1
        self.execution_time = -1
        self.finish_time = -1
        self.qnode = None
        self.transpiled_circuit = None
        self.transpiled_circuit_layers = None
        self.transpiled_gate_counts = None
        self.error = None
        self.shots = shots
        self.rescheduling_count = 0

    def set_status(self, status):
        self.status = status

    def update_transpiled_circuit(self, transpiled_qc):
        """Update the transpiled circuit and its features (for QASM file inputs only)."""
        self.transpiled_circuit = transpiled_qc
        self.transpiled_circuit_layers = self.transpiled_circuit.depth()
        self.transpiled_gate_counts = self.transpiled_circuit.count_ops()
        return self.transpiled_circuit_layers, self.transpiled_gate_counts

    def get_circuit_layers(self):
        if self.transpiled_circuit_layers is not None:
            return self.transpiled_circuit_layers
        return self.circuit_layers
