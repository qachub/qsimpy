// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
u3(3.2220464314480877,-0.7167882678555819,0.7167882678555819) q[0];
u2(0,0) q[1];
u1(0.6328290844213722) q[2];
cx q[1],q[2];
ry(2.6026363654825047) q[1];
ry(-2.6026363654825047) q[2];
cx q[1],q[2];
u2(-pi,-pi) q[1];
cu1(pi/2) q[0],q[1];
u1(2.508763569168421) q[2];
cswap q[0],q[1],q[2];
u1(5.864966885210837) q[0];
rzz(5.196847304624584) q[1],q[2];
rzz(5.695888160944528) q[0],q[2];
cu3(3.2536483225524107,2.026167409578137,1.7745821253041683) q[0],q[2];
u3(2.4764232673109765,-1.04448872307207,2.5432022362570406) q[1];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
