import os
import re
import csv
from qiskit import QuantumCircuit, transpile
from qiskit.providers.fake_provider import FakeProviderForBackendV2
from qiskit.providers.exceptions import QiskitBackendNotFoundError

provider = FakeProviderForBackendV2()

# Regular expression pattern to extract algorithm name from the file name
pattern = r"(.+?)_indep_qiskit_"


def get_backend(provider, name=None):
    backend = None
    if name:
        filtered_backends = [
            backend for backend in provider.backends() if backend.name == "fake_" + name
        ]
        if not filtered_backends:
            raise QiskitBackendNotFoundError()
        backend = filtered_backends[0]

    return backend


backends = [
    {"num_qubits": 7, "instance": get_backend(provider, "perth")},
    {"num_qubits": 16, "instance": get_backend(provider, "guadalupe")},
    {"num_qubits": 27, "instance": get_backend(provider, "hanoi")},
    {"num_qubits": 127, "instance": get_backend(provider, "washington")},
]


def extract_circuit_features(qasm_path, backends):
    features_data = []
    init_circuit = QuantumCircuit.from_qasm_file(qasm_path)
    init_width = init_circuit.num_qubits
    init_depth = init_circuit.depth()
    # Count the number of each gate in the circuit
    init_gate_counts = dict(init_circuit.count_ops())
    features_data.append(
        {
            "model": "original",
            "width": init_width,
            "depth": init_depth,
            "gates": init_gate_counts,
        }
    )

    # Transpile the circuit for each backend and extract the width, depth, and gate counts
    for backend in backends:
        model = "ibmq" + str(backend["num_qubits"])
        if backend["num_qubits"] < init_width:
            width = -1
            depth = -1
            gate_counts = {}
        else:
            transpiled_circuit = transpile(
                init_circuit, backend["instance"], optimization_level=3
            )
            width = transpiled_circuit.num_qubits
            depth = transpiled_circuit.depth()
            # Count the number of each gate in the circuit
            gate_counts = dict(transpiled_circuit.count_ops())
        # Add backend_n_qubits, width, depth, and gate_counts to the transpiled_data list
        features_data.append(
            {"model": model, "width": width, "depth": depth, "gates": gate_counts}
        )

    return features_data


def write_circuit_features_csv(folder, backends):
    with open("qdataset_indep_2-50q.csv", "w", newline="") as csvfile:
        csvwriter = csv.writer(csvfile)

        # Write the header row
        header = ["algorithm", "original_width", "original_depth", "original_gates"]
        for backend in backends:
            model = "ibmq" + str(backend["num_qubits"])
            header.append(model + "_width")
            header.append(model + "_depth")
            header.append(model + "_gates")
        csvwriter.writerow(header)

        file_list = os.listdir(folder)
        # Write the data rows in alphabetical order
        for file_name in sorted(file_list):
            if file_name.endswith(".qasm"):
                match = re.search(pattern, file_name)
                if match:
                    algorithm_name = match.group(1)
                    qasm_path = os.path.join(folder, file_name)
                    transpiled_data = extract_circuit_features(qasm_path, backends)
                    row = [algorithm_name]
                    for data in transpiled_data:
                        row.append(data["width"])
                        row.append(data["depth"])
                        row.append(str(data["gates"]))
                    csvwriter.writerow(row)


write_circuit_features_csv(folder="qd-generation", backends=backends)
