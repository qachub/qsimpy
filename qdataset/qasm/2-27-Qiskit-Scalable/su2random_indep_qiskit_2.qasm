// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
u3(1.4368347742816616,0.8397366260192594,-pi) q[0];
u3(0.13038834331032634,-1.578311754453951,0) q[1];
cx q[0],q[1];
u3(3.1322119352256292,1.2444656817555666,0) q[0];
u3(1.4124389803026798,-1.5046299106322625,0) q[1];
cx q[0],q[1];
u3(1.0625547235745711,-1.9769425662797726,0) q[0];
u3(0.5550554224571163,-0.2928382424047804,0) q[1];
cx q[0],q[1];
u3(0.02480768898038398,-1.1773372206208812,0) q[0];
u3(3.0649864034230183,0.70702212977712,-pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
