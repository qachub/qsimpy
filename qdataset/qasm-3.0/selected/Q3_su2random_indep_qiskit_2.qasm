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

qubit[2] q;
bit[2] meas;
u3(1.4368347742816616,0.8397366260192594,-pi) q[0];
u3(0.13038834331032634,-1.578311754453951,0) q[1];
cx q[0],q[1];
u3(3.1322119352256292,1.2444656817555666,0) q[0];
u3(1.4124389803026798,-1.5046299106322625,0) q[1];
cx q[0],q[1];
u3(1.0625547235745711,-1.9769425662797726,0) q[0];
u3(0.5550554224571163,-0.2928382424047804,0) q[1];
cx q[0],q[1];
u3(0.02480768898038398,-1.1773372206208812,0) q[0];
u3(3.0649864034230183,0.70702212977712,-pi) q[1];
barrier q[0],q[1];
meas[0] = measure q[0];
meas[1] = measure q[1];