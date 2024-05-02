// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[5];
h q[0];
h q[1];
rzz(-4.35356923724973) q[0],q[1];
h q[2];
rzz(-4.35356923724973) q[0],q[2];
rx(5.785523702154858) q[0];
h q[3];
rzz(-4.35356923724973) q[1],q[3];
rx(5.785523702154858) q[1];
rzz(-2.643235669655361) q[0],q[1];
h q[4];
rzz(-4.35356923724973) q[2],q[4];
rx(5.785523702154858) q[2];
rzz(-2.643235669655361) q[0],q[2];
rx(7.494016406088582) q[0];
rzz(-4.35356923724973) q[3],q[4];
rx(5.785523702154858) q[3];
rzz(-2.643235669655361) q[1],q[3];
rx(7.494016406088582) q[1];
rx(5.785523702154858) q[4];
rzz(-2.643235669655361) q[2],q[4];
rx(7.494016406088582) q[2];
rzz(-2.643235669655361) q[3],q[4];
rx(7.494016406088582) q[3];
rx(7.494016406088582) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
