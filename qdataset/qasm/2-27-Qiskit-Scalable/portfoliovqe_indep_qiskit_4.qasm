// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
ry(-5.6930319132895) q[0];
ry(-1.12511205617965) q[1];
cz q[0],q[1];
ry(-2.72654255294887) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(4.71194571298522) q[3];
cz q[0],q[3];
ry(2.27354377291191) q[0];
cz q[1],q[3];
ry(2.48440532049915) q[1];
cz q[0],q[1];
cz q[2],q[3];
ry(4.07487238443428) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(-2.57676238717765) q[3];
cz q[0],q[3];
ry(0.409876317961392) q[0];
cz q[1],q[3];
ry(-2.36624500896937) q[1];
cz q[0],q[1];
cz q[2],q[3];
ry(5.40971082321176) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(4.51874245462199) q[3];
cz q[0],q[3];
ry(-0.421836250244248) q[0];
cz q[1],q[3];
ry(5.67280177101336) q[1];
cz q[2],q[3];
ry(3.15082511644496) q[2];
ry(-2.98464490478688) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
