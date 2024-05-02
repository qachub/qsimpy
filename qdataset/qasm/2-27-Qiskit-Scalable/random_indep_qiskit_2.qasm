// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg meas[2];
rx(pi/2) q[0];
rx(pi/2) q[1];
rzz(1.304903297657757) q[0],q[1];
u2(-pi/2,-pi) q[0];
rx(-pi/2) q[1];
cx q[1],q[0];
rz(3.2220464314480877) q[0];
cx q[1],q[0];
u2(0.7144206217376547,-pi) q[0];
u3(pi,pi/2,-pi/2) q[1];
cx q[1],q[0];
ry(-3.0062717024781365) q[0];
ry(3.0062717024781365) q[1];
cx q[1],q[0];
u1(-2.6682620430456936) q[0];
u2(-pi,-pi) q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
