// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg meas[8];
ry(-0.000478576634037534) q[0];
ry(2.37479979398369) q[1];
ry(0.000121762887332457) q[2];
ry(-1.57071083524256) q[3];
ry(-1.57066140718803) q[4];
ry(-1.57092368258616) q[5];
ry(-0.504345101267645) q[6];
ry(pi) q[7];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-0.000171858879890788) q[0];
ry(-0.336235453276163) q[1];
ry(2.67428319964476) q[2];
ry(-1.57065827546851) q[3];
ry(1.57080083855567) q[4];
ry(-1.57092335848406) q[5];
ry(1.57089211056806) q[6];
ry(pi) q[7];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-0.000151671529877075) q[0];
ry(2.31849870955276) q[1];
ry(-0.331048158737342) q[2];
ry(-1.57142154371112) q[3];
ry(-0.000367489910146316) q[4];
ry(-3.1414760495428) q[5];
ry(-pi) q[6];
ry(2.07453332316489) q[7];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
