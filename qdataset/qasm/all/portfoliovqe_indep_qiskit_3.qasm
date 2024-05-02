// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(6.40668843373193) q[0];
ry(7.5164373992321) q[1];
cz q[0],q[1];
ry(4.25544595579174) q[2];
cz q[0],q[2];
ry(4.68472337652313) q[0];
cz q[1],q[2];
ry(-5.57234388429086) q[1];
cz q[0],q[1];
ry(6.25061895543956) q[2];
cz q[0],q[2];
ry(3.69894705829353) q[0];
cz q[1],q[2];
ry(5.04817012312717) q[1];
cz q[0],q[1];
ry(-4.6879753557813) q[2];
cz q[0],q[2];
ry(-5.4431166727138) q[0];
cz q[1],q[2];
ry(-1.73368723877557) q[1];
ry(-0.708311164662455) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
