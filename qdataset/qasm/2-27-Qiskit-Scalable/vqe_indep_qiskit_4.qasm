// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-0.0972176287431798) q[0];
ry(-pi) q[1];
ry(-1.60128522314631) q[2];
ry(-0.131031131824132) q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-2.03974673213804) q[0];
ry(1.52166781607207) q[1];
ry(-2.91341164660983) q[2];
ry(0.226125934504665) q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-2.03747697749537) q[0];
ry(-1.67976962821752) q[1];
ry(1.5708841045861) q[2];
ry(0.134448237161056) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
