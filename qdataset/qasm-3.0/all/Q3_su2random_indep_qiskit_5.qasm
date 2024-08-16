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

qubit[5] q;
bit[5] meas;
u3(1.4368347742816616,-1.7291536732871133,-pi) q[0];
u3(0.13038834331032634,1.2444656817555666,0) q[1];
cx q[0],q[1];
u3(2.3018560275705338,1.6369627429575306,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
u3(1.5783117544539513,-2.079037930015222,-pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
u3(3.1322119352256292,0.5550554224571163,0) q[4];
cx q[0],q[4];
u3(1.9769425662797728,0.70702212977712,-pi) q[0];
cx q[1],q[4];
u3(0.2928382424047807,1.3933297522764283,-pi) q[1];
cx q[0],q[1];
cx q[2],q[4];
u3(0.02480768898038398,1.8339114230470699,0) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[4];
u3(3.0649864034230183,2.6249522282931705,-pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
u3(1.1773372206208805,1.3482194095209188,-pi) q[4];
cx q[0],q[4];
u3(2.8742785055981956,-0.4146023075677032,-pi) q[0];
cx q[1],q[4];
u3(0.8932807542109366,-2.401640904800445,0) q[1];
cx q[0],q[1];
cx q[2],q[4];
u3(2.345769178126651,-3.059042641009883,0) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[4];
u3(2.047478881918867,0.94497336375301,-pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
u3(2.7761197097590844,-2.5067461861055573,0) q[4];
cx q[0],q[4];
u3(1.2238187478398983,-1.252238475865131,-pi) q[0];
cx q[1],q[4];
u3(3.005579583727834,-2.4254077858804965,-pi) q[1];
cx q[2],q[4];
u3(0.5739760098973872,2.0651656802006935,-pi) q[2];
cx q[3],q[4];
u3(2.0058195038543025,0.29465826494733527,0) q[3];
u3(0.5683728542359916,-2.348107098834042,0) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];