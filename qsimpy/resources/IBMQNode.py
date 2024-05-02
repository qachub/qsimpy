from typing import Optional
from .QNode import QNode
from qiskit.providers import fake_provider
from qiskit.providers.fake_provider import FakeProviderForBackendV2
from qiskit.providers.exceptions import QiskitBackendNotFoundError

provider = FakeProviderForBackendV2()


# Get the IBMQ backend instance from Qiskit with the given name
def get_ibmq_backend(name: str):
    backend = None
    if name:
        filtered_backends = [
            backend for backend in provider.backends() if backend.name == "fake_" + name
        ]
        if not filtered_backends:
            raise QiskitBackendNotFoundError()
        backend = filtered_backends[0]

    return backend


# IBM Quantum QV and CLOPS
ibmq_systems = {
    "sherbrooke": {"qubits": 127, "qv": 32, "clops": 904},
    "washington": {"qubits": 127, "qv": 64, "clops": 850},
    "kolkata": {"qubits": 27, "qv": 128, "clops": 2000},
    "mumbai": {"qubits": 27, "qv": 128, "clops": 1800},
    "cairo": {"qubits": 27, "qv": 64, "clops": 2400},
    "hanoi": {"qubits": 27, "qv": 64, "clops": 2300},
    "guadalupe": {"qubits": 16, "qv": 32, "clops": 2400},
    "perth": {"qubits": 7, "qv": 32, "clops": 2900},
    "lagos": {"qubits": 7, "qv": 32, "clops": 2700},
    "nairobi": {"qubits": 7, "qv": 32, "clops": 2600},
    "belem": {"qubits": 5, "qv": 16, "clops": 2500},
    "lima": {"qubits": 5, "qv": 8, "clops": 2700},
    "quito": {"qubits": 5, "qv": 16, "clops": 1500},
}


def create_ibmq_node(env, id: int, backend_name: str):
    """
    Create an IBMQ node.
    Args:
        - env (simpy.Environment): The SimPy simulation environment.
        - backend_name (str): The name of the IBMQ backend to use.
    Returns:
        - ibmq_node (QNode): The created IBMQ node.
    """
    ibmq_node = QNode(env, id=id)
    node_metrics = ibmq_systems[backend_name]
    node_instance = get_ibmq_backend(backend_name)
    ibmq_node.qubit_number = node_metrics["qubits"]
    ibmq_node.quantum_volume = node_metrics["qv"]
    ibmq_node.clops = node_metrics["clops"]
    ibmq_node.d1cps = ibmq_node.clops * 19.95
    ibmq_node.qiskit_backend = node_instance
    ibmq_node.qnode_name = "ibm_" + backend_name
    ibmq_node.qnode_model = "ibmq" + str(ibmq_node.qubit_number)
    return ibmq_node
