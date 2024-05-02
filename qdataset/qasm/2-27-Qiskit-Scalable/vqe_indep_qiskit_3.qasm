// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg meas[3];
ry(0.416499152901678) q[0];
ry(1.6289300606876) q[1];
ry(-0.301497213523459) q[2];
cx q[1],q[2];
cx q[0],q[1];
ry(-2.66473611257652) q[0];
ry(-1.88697596497767) q[1];
ry(1.42601786989662) q[2];
cx q[1],q[2];
cx q[0],q[1];
ry(-0.770603706024532) q[0];
ry(-2.33750437070044) q[1];
ry(3.04370801572893) q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
