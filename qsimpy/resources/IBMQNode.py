from typing import Optional
from .QNode import QNode
from qiskit_ibm_runtime.fake_provider import FakeProviderForBackendV2
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

#{"T1":,"T2":,"Frequency":,"Anharmonicity":,"Readout_assignment_error":,"Prob_meas0_prep1":,"Prob_meas1_prep0":,"Readout_length":,"ID_error":,"x(sx)error":,"Pauli_X_error":,"CNOT_error":,"Gate_time":},
ibmq_errors = {
    "sherbrooke": {"T1":244.0211465449952,"T2":76.98998598060084,"Frequency":4.831238726567614,"Anharmonicity":-0.3093005432479466,"Readout_assignment_error":0.0041999999999999815, "Prob_meas0_prep1":0.0031999999999999806,"Prob_meas1_prep0":0.0052,"Readout_length":1244.4444444444443,"ID_error":0.00023093960210197027,"x(sx)error":0.00023093960210197027	,	"Pauli_X_error": 0.00023093960210197027	,	"CNOT_error":"126_125:0.007015070565186743",	"Gate_time":"126_125:533.3333333333333" },
    "washington": {"T1":91.36237700988423,"T2":93.04924788032375,"Frequency":5.164926549142054,"Anharmonicity":-0.3049521120322977,"Readout_assignment_error":0.006900000000000017,"Prob_meas0_prep1":0.008199999999999985,"Prob_meas1_prep0":0.0056,"Readout_length":864,"ID_error":0.00030213359266787284,"x(sx)error":0.00030213359266787284,"Pauli_X_error":0.00030213359266787284,"CNOT_error":"126_112:0.017944011531912274; 126_125:0.008652533098843895","Gate_time":"126_112:412.4444444444444; 126_125:469.3333333333333"},
    "kolkata": {"T1":88.09158702380311,"T2":17.657990493465327,"Frequency":5.119915138771412,"Anharmonicity":-0.3424851095935517,"Readout_assignment_error":0.038799999999999946,"Prob_meas0_prep1":0.03959999999999997,"Prob_meas1_prep0":0.038,"Readout_length":640,"ID_error":0.001212089060060996,"x(sx)error":0.001212089060060996	,"Pauli_X_error":0.001212089060060996,"CNOT_error":"26_25:1","Gate_time":"26_25:497.77777777777777"},
    "mumbai": {"T1":141.7488980388644,"T2":223.60730957229575,"Frequency":4.9542619068718485,"Anharmonicity":-0.3295357314028495,"Readout_assignment_error":0.02729999999999999	,"Prob_meas0_prep1":0.0418,"Prob_meas1_prep0":0.012800000000000034	,"Readout_length":3576.8888888888887,"ID_error":0.00023166833496968313,"x(sx)error":0.00023166833496968313,"Pauli_X_error":0.00023166833496968313,"CNOT_error":"26_25:0.005029354747813297","Gate_time":"26_25:312.88888888888886"},
    "cairo": {"T1":104.25305138965244	,"T2":28.893533650798858,"Frequency":5.192020812600746,"Anharmonicity":-0.33910135286743404	,"Readout_assignment_error":0.011900000000000022,"Prob_meas0_prep1":0.0166,"Prob_meas1_prep0":0.007199999999999984,"Readout_length":732.4444444444445,"ID_error":0.00016512171921400143,"x(sx)error":0.00016512171921400143,"Pauli_X_error":0.00016512171921400143,"CNOT_error":"26_25:0.005947027864922627","Gate_time":"26_25:206.2222222222222"},
    "hanoi": {"T1":83.68827829068721,"T2":28.045064814950855,"Frequency":5.019587126083749,"Anharmonicity":-0.34327757947603954	,"Readout_assignment_error":0.007199999999999984,"Prob_meas0_prep1":0.011199999999999988,"Prob_meas1_prep0":0.0032,"Readout_length":817.7777777777777,"ID_error":0.00025295295217732876,"x(sx)error":0.00025295295217732876,"Pauli_X_error":0.00025295295217732876,"CNOT_error":"26_25:0.005338648988252259","Gate_time":"26_25:195.55555555555554"},
    "guadalupe": {"T1":126.92777569020737,"T2":186.71979683819882,"Frequency":5.126280465764422,"Anharmonicity":-0.3342827298218188	,"Readout_assignment_error":-0.3342827298218188	,"Prob_meas0_prep1":0.0232,"Prob_meas1_prep0":0.004,"Readout_length":7111.11111111111,"ID_error":0.0002729952565268295,"x(sx)error":0.0002729952565268295,"Pauli_X_error":0.0002729952565268295,"CNOT_error":"15_12:0.007270776258628653","Gate_time":"15_12:412.4444444444444"},
    "perth": {"T1":130.2527163821089,"T2":245.50290704153485,"Frequency":5.1566365221238915,"Anharmonicity":-0.34045439072670325,"Readout_assignment_error":0.03699999999999992,"Prob_meas0_prep1":0.028200000000000003,"Prob_meas1_prep0":0.0458,"Readout_length":675.5555555555555,"ID_error":0.0003261251950378135,"x(sx)error":0.0003261251950378135,"Pauli_X_error":0.0003261251950378135,"CNOT_error":"6_5:0.01782712545303694","Gate_time":"6_5:604.4444444444445"},
    "lagos": {"T1":74.45378165927431,"T2":69.52962015091349,"Frequency":5.063894749247978,"Anharmonicity":-0.34275836537159754,"Readout_assignment_error":-0.34275836537159754,"Prob_meas0_prep1":0.013399999999999967,"Prob_meas1_prep0":0.013,"Readout_length":789.3333333333333,"ID_error":0.00020978613405340697,"x(sx)error":0.00020978613405340697,"Pauli_X_error":0.00020978613405340697,"CNOT_error":"6_5:0.010736364494508044","Gate_time":"6_5:291.55555555555554"},
    "nairobi": {"T1":146.57082471241347,"T2":54.879288418054394,"Frequency":5.128680809456053,"Anharmonicity":-0.3404356760163406,"Readout_assignment_error":0.030899999999999928,"Prob_meas0_prep1":0.04359999999999997,"Prob_meas1_prep0":0.0182,"Readout_length":5560.888888888889,"ID_error":0.0005604041231290325,"x(sx)error":0.0005604041231290325,"Pauli_X_error":0.0005604041231290325,"CNOT_error":"6_5:0.006759998798276212","Gate_time":"6_5:305.77777777777777"},
    "belem": {"T1":82.03732654706876,"T2":149.9589443726645	,"Frequency":5.258463185890278,"Anharmonicity":-0.3313451432371279,"Readout_assignment_error":0.018399999999999972,"Prob_meas0_prep1":0.02639999999999998,"Prob_meas1_prep0":0.0104,"Readout_length":6158.222222222222,"ID_error":0.0004875682649286228,"x(sx)error":0.0004875682649286228,"Pauli_X_error":0.0004875682649286228,"CNOT_error":"4_3:0.0107592100363047","Gate_time":"4_3:490.66666666666663"},
    "lima": {"T1":20.56048068468007,"T2":23.965051526127915	,"Frequency":5.092080477774691,"Anharmonicity":-0.3344696566823515,"Readout_assignment_error":0.05679999999999996,"Prob_meas0_prep1":0.08879999999999999,"Prob_meas1_prep0":0.0248,"Readout_length":5912.888888888889,"ID_error":0.000682440876478287,"x(sx)error":0.000682440876478287,"Pauli_X_error":0.000682440876478287,"CNOT_error":"4_3:0.016401909313567747","Gate_time":"4_3:483.55555555555554"},
    "quito": {"T1":63.85969141991406,"T2":77.11980413116734,"Frequency":5.05232582664422,"Anharmonicity":-0.3192628614050085,"Readout_assignment_error":0.042200000000000015,"Prob_meas0_prep1":0.042200000000000015,"Prob_meas1_prep0":0.0188,"Readout_length":5351.11111111111,"ID_error":0.0005524872081103501,"x(sx)error":0.0005524872081103501,"Pauli_X_error":0.0005524872081103501,"CNOT_error":"4_3:0.017119643645879645","Gate_time":"4_3:312.88888888888886"},
}

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
    ibmq_node.error = ibmq_errors[backend_name]
    return ibmq_node
