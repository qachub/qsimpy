// Benchmark was created by MQT Bench on 2023-06-29
// For more information about MQT Bench, please visit https://www.cda.cit.tum.de/mqtbench/
// MQT Bench version: v1.0.0
// Qiskit version: {'qiskit-terra': '0.24.1', 'qiskit-aer': '0.12.0', 'qiskit-ignis': None, 'qiskit-ibmq-provider': '0.20.2', 'qiskit': '0.43.1', 'qiskit-nature': '0.6.2', 'qiskit-finance': '0.3.4', 'qiskit-optimization': '0.5.0', 'qiskit-machine-learning': '0.6.1'}

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg meas[4];
u3(1.4368347742816614,-0.009380718364163876,-pi) q[0];
u3(0.13038834331032634,1.4124389803026798,0) q[1];
cx q[0],q[1];
u3(2.3018560275705338,-1.8971269718342265,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
u3(1.5783117544539513,1.6369627429575306,-pi) q[3];
cx q[0],q[3];
u3(1.0625547235745711,0.02480768898038388,0) q[0];
cx q[1],q[3];
u3(0.5550554224571163,-3.064986403423018,0) q[1];
cx q[0],q[1];
cx q[2],q[3];
u3(1.9769425662797726,1.9642554329689128,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
u3(0.2928382424047807,0.70702212977712,-pi) q[3];
cx q[0],q[3];
u3(1.748262901313365,0.2673141479915975,-pi) q[0];
cx q[1],q[3];
u3(1.8339114230470697,0.8932807542109362,0) q[1];
cx q[0],q[1];
cx q[2],q[3];
u3(0.5166404252966228,-0.7958234754631421,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
u3(1.7933732440688746,1.0941137716709264,-pi) q[3];
cx q[0],q[3];
u3(2.7761197097590844,-2.196619289836783,0) q[0];
cx q[1],q[3];
u3(2.72699034602209,-2.5067461861055573,0) q[1];
cx q[2],q[3];
u3(2.4016409048004452,1.917773905749895,-pi) q[2];
u3(3.059042641009883,0.13601306986195905,-pi) q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
