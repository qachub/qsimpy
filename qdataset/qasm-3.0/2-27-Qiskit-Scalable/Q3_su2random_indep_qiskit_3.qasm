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

qubit[3] q;
bit[3] meas;
u3(1.4368347742816616,1.563280899135842,-pi) q[0];
u3(0.13038834331032634,3.1322119352256292,0) q[1];
cx q[0],q[1];
u3(2.301856027570534,-1.7291536732871133,-pi) q[2];
cx q[0],q[2];
u3(1.2444656817555668,0.5550554224571163,0) q[0];
cx q[1],q[2];
u3(1.5046299106322627,1.1646500873100205,-pi) q[1];
cx q[0],q[1];
u3(1.0625547235745711,-0.2928382424047804,0) q[2];
cx q[0],q[2];
u3(0.024807688980383977,-2.434570523812673,0) q[0];
cx q[1],q[2];
u3(3.0649864034230183,1.3933297522764283,-pi) q[1];
cx q[0],q[1];
u3(1.1773372206208805,-1.3076812305427237,-pi) q[2];
cx q[0],q[2];
u3(0.5166404252966228,-2.248311899378857,-pi) q[0];
cx q[1],q[2];
u3(1.793373244068875,-0.7958234754631421,-pi) q[1];
u3(2.8742785055981956,1.0941137716709264,-pi) q[2];
barrier q[0],q[1],q[2];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];