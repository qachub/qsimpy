// Generated from qBraid v0.7.1
OPENQASM 3.0;
include 'stdgates.inc';
// Generated from qiskit v0.24.0 file qiskit/qasm/libs/qelib1.inc

// QASM 3 equivalent definitions of qelib1.inc gates

// idle gate (identity) with length gamma*sqglen
 
// generic single qubit gate

// inverse sqrt(X)

// controlled-sqrt(X)

// controlled phase rotation 

// controlled-U

// two-qubit XX rotation
// gate rxx(theta) a, b
// {
//   u3(pi/2, theta, 0) a;
//   h b;
//   cx a,b;
//   u1(-theta) b;
//   cx a,b;
//   h b;
//   ******** why type error ********
//   // u2(-pi, pi-theta) b;
// }

// two-qubit ZZ rotation

// relative-phase CCX

// relative-phase 3-controlled X gate

// 3-controlled X gate

// 3-controlled sqrt(X) gate, this equals the C3X gate 
// where the CU1 rotations are -pi/8 not -pi/4

// 4-controlled X gate 

qubit[4] q;
bit[4] meas;
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
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];