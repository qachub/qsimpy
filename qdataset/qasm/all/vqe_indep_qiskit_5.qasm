// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
ry(-0.00050853209077915) q[0];
ry(1.60474982892674) q[1];
ry(3.11696462134292) q[2];
ry(0.631337687303728) q[3];
ry(1.37038897297872) q[4];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.48258216794544) q[0];
ry(1.14915357797252) q[1];
ry(1.99229667732523) q[2];
ry(-1.61257187755989) q[3];
ry(-2.88668406207188) q[4];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.6590365094725) q[0];
ry(-1.57123032572138) q[1];
ry(0.0280552541388008) q[2];
ry(-1.63019698838745) q[3];
ry(-1.72268536272118) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
