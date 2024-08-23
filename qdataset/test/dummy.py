import os
import re
import qiskit
from qiskit.primitives import BackendEstimator
from qiskit.providers.fake_provider import GenericBackendV2
from qiskit.visualization import plot_histogram

print("Start")


# Note - I just substituted a couple of names and qubit numbers at random to test if the QASM 3.0 files worked
# It doesn't test past 24 qubits since I can't create a Fake Backend with more than 24 qubits
# - Ashwin

algo = "portfoliovqe"
qubit = 4
pattern = rf"Q3_{algo}_indep_qiskit_{qubit}"  # Regex pattern to match the desired files
#pattern = r"(.+?)_indep_qiskit_"  # Regex pattern to match the desired files
folder = "../qdataset/qasm-3.0/all"  # Folder where QASM files are located
file_list = os.listdir(folder)  # List all files in the folder   
# Initialize the transpiler with the specified backend and options
qasm_path = None  # Initialize qasm_path to None

# Loop through the sorted list of files in the folder
for file_name in sorted(file_list):
    if file_name.endswith(".qasm"):
        match = re.search(pattern, file_name)  # Search for the pattern in the filename
        if match:
            qasm_path = os.path.join(folder, file_name)  # If a match is found, set qasm_path
            break  # Break the loop once a valid QASM file is found

# Check if a valid QASM file was found
if qasm_path:
    qasm_file = qasm_path

    # Create a QuantumCircuit object from the QASM file
    circuit = qiskit.qasm3.load(qasm_file)

    # Generate a 5-qubit simulated backend
    backend = GenericBackendV2(num_qubits=24)
    
    # Transpile the ideal circuit to a circuit that can be directly executed by the backend
    transpiled_circuit = qiskit.transpile(circuit, backend)
    transpiled_circuit.draw('mpl')
    
    # Run the transpiled circuit using the simulated backend
    job = backend.run(transpiled_circuit)
    counts = job.result().get_counts()
    print(counts)

print("Finish")