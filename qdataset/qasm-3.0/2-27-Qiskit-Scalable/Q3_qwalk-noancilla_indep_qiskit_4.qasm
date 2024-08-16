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

qubit[3] node;

qubit[1] coin;
bit[4] meas;
u2(pi/8,-pi) node[0];
p(pi/8) node[1];
p(pi/8) node[2];
u2(pi/8,-pi) coin[0];
cx coin[0],node[1];
p(-pi/8) node[1];
cx coin[0],node[1];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
p(pi/8) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
u3(pi,9*pi/16,-9*pi/16) coin[0];
u1(pi/8) node[0];
u3(pi,9*pi/16,-9*pi/16) node[1];
cx coin[0],node[1];
p(-pi/8) node[1];
cx coin[0],node[1];
u3(pi,9*pi/16,-9*pi/16) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
p(pi/8) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
u2(-7*pi/8,-pi) coin[0];
u1(pi/8) node[0];
u3(pi,9*pi/16,-9*pi/16) node[1];
cx coin[0],node[1];
p(-pi/8) node[1];
cx coin[0],node[1];
u3(pi,9*pi/16,-9*pi/16) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
p(pi/8) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
u3(pi,9*pi/16,-9*pi/16) coin[0];
u1(pi/8) node[0];
u3(pi,9*pi/16,-9*pi/16) node[1];
cx coin[0],node[1];
p(-pi/8) node[1];
cx coin[0],node[1];
u3(pi,9*pi/16,-9*pi/16) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
p(pi/8) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
u2(-7*pi/8,-pi) coin[0];
u1(pi/8) node[0];
u3(pi,9*pi/16,-9*pi/16) node[1];
cx coin[0],node[1];
p(-pi/8) node[1];
cx coin[0],node[1];
u3(pi,9*pi/16,-9*pi/16) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
p(pi/8) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
u3(pi,9*pi/16,-9*pi/16) coin[0];
u1(pi/8) node[0];
u3(pi,9*pi/16,-9*pi/16) node[1];
cx coin[0],node[1];
p(-pi/8) node[1];
cx coin[0],node[1];
u3(pi,9*pi/16,-9*pi/16) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
p(pi/8) node[2];
cx node[1],node[2];
p(-pi/8) node[2];
cx coin[0],node[2];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx node[1],node[0];
p(pi/8) node[0];
cx node[2],node[0];
p(-pi/8) node[0];
cx coin[0],node[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
x coin[0];
h node[0];
x node[1];
x node[2];
barrier node[0],node[1],node[2],coin[0];
meas[0] = measure node[0];
meas[1] = measure node[1];
meas[2] = measure node[2];
meas[3] = measure coin[0];