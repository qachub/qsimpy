// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg meas[7];
ry(-3.14152341802101) q[0];
ry(-0.00182007738917) q[1];
ry(1.94648419698685) q[2];
ry(2.08619948427882) q[3];
ry(0.969279745951983) q[4];
ry(-1.57064392709742) q[5];
ry(-1.57072456373296) q[6];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-pi) q[0];
ry(pi) q[1];
ry(-0.869175912287858) q[2];
ry(-2.70251756254087) q[3];
ry(-0.103352920273498) q[4];
ry(0.000101110010352993) q[5];
ry(-3.14158482308236) q[6];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-pi) q[0];
ry(3.03369695453418) q[1];
ry(-1.85892966818104) q[2];
ry(1.02654116848912) q[3];
ry(-1.31938026978974) q[4];
ry(-1.57088379343877) q[5];
ry(1.57076641004618) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
