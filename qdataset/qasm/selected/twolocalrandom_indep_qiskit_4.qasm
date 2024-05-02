// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(4.84635053289793) q[0];
ry(0.130388343310326) q[1];
cx q[0],q[1];
ry(3.98132927960905) q[2];
cx q[0],q[2];
cx q[1],q[2];
ry(4.70487355272564) q[3];
cx q[0],q[3];
ry(3.13221193522563) q[0];
cx q[1],q[3];
ry(1.41243898030268) q[1];
cx q[0],q[1];
cx q[2],q[3];
ry(1.24446568175557) q[2];
cx q[0],q[2];
cx q[1],q[2];
ry(4.77855539654732) q[3];
cx q[0],q[3];
ry(1.06255472357457) q[0];
cx q[1],q[3];
ry(0.555055422457116) q[1];
cx q[0],q[1];
cx q[2],q[3];
ry(4.30624274089981) q[2];
cx q[0],q[2];
cx q[1],q[2];
ry(5.99034706477481) q[3];
cx q[0],q[3];
ry(0.024807688980384) q[0];
cx q[1],q[3];
ry(3.21819890375657) q[1];
cx q[2],q[3];
ry(5.10584808655871) q[2];
ry(3.84861478336691) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
