// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg meas[7];
h q[0];
h q[1];
h q[2];
rzz(1.4889028236449289) q[1],q[2];
h q[3];
rzz(1.4889028236449289) q[0],q[3];
h q[4];
rzz(1.4889028236449289) q[1],q[4];
rx(-11.77760047846243) q[1];
rzz(1.4889028236449289) q[2],q[4];
rx(-11.77760047846243) q[2];
rzz(5.494419276762809) q[1],q[2];
rx(-11.77760047846243) q[4];
rzz(5.494419276762809) q[1],q[4];
rx(-4.630465864830882) q[1];
rzz(5.494419276762809) q[2],q[4];
rx(-4.630465864830882) q[2];
rx(-4.630465864830882) q[4];
h q[5];
rzz(1.4889028236449289) q[0],q[5];
rx(-11.77760047846243) q[0];
h q[6];
rzz(1.4889028236449289) q[3],q[6];
rx(-11.77760047846243) q[3];
rzz(5.494419276762809) q[0],q[3];
rzz(1.4889028236449289) q[5],q[6];
rx(-11.77760047846243) q[5];
rzz(5.494419276762809) q[0],q[5];
rx(-4.630465864830882) q[0];
rx(-11.77760047846243) q[6];
rzz(5.494419276762809) q[3],q[6];
rx(-4.630465864830882) q[3];
rzz(5.494419276762809) q[5],q[6];
rx(-4.630465864830882) q[5];
rx(-4.630465864830882) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
