// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg meas[6];
ry(1.93440202308072e-5) q[0];
ry(2.10758205434165) q[1];
ry(2.63943386492572) q[2];
ry(-1.15448690368407) q[3];
ry(-pi) q[4];
ry(1.33862468434083) q[5];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(pi) q[0];
ry(-1.57064044552274) q[1];
ry(1.57072377942384) q[2];
ry(1.57091346029499) q[3];
ry(-1.57091507253759) q[4];
ry(2.90923213524634) q[5];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(pi) q[0];
ry(1.57082587850601) q[1];
ry(0.536860674618067) q[2];
ry(2.07297807077887) q[3];
ry(0.416567573705098) q[4];
ry(1.57081631637618) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
