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

qubit[13] q;
bit[13] meas;
ry(0.012252986351781) q[0];
ry(-0.115759596938054) q[1];
ry(-2.61206872626673) q[2];
ry(0.198336169167227) q[3];
ry(1.23277918971464) q[4];
ry(-2.31064162968121) q[5];
ry(-2.57401078378388) q[6];
ry(1.99105569887162) q[7];
ry(2.4442308167817) q[8];
ry(2.99468245853902) q[9];
ry(2.09592888772295e-5) q[10];
ry(-1.57107544494153) q[11];
ry(-pi) q[12];
cx q[11],q[12];
cx q[10],q[11];
ry(-0.163272582003682) q[11];
ry(2.97836812780621) q[12];
cx q[11],q[12];
ry(-3.14141636917303) q[12];
cx q[9],q[10];
ry(1.57129422741846) q[10];
cx q[10],q[11];
ry(1.5708761984576) q[11];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(0.00401419088301031) q[0];
ry(0.2341647878156) q[1];
ry(-2.1915687142918) q[2];
ry(-1.45533696280815) q[3];
ry(-1.57146505897606) q[4];
ry(1.57061538663187) q[5];
ry(-1.57066581281105) q[6];
ry(1.57040550614196) q[7];
ry(1.57033745356408) q[8];
ry(-1.57121858472222) q[9];
cx q[9],q[10];
ry(1.71749851668731) q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(0.0122550143555452) q[0];
ry(0.273450972700664) q[1];
ry(2.00891448279767) q[2];
ry(-0.799899240854699) q[3];
ry(1.37731463523884) q[4];
ry(pi) q[5];
ry(-2.40165417218105) q[6];
ry(-1.00432721158254) q[7];
ry(2.71081964307348) q[8];
ry(0.873101273834791) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];
meas[6] = measure q[6];
meas[7] = measure q[7];
meas[8] = measure q[8];
meas[9] = measure q[9];
meas[10] = measure q[10];
meas[11] = measure q[11];
meas[12] = measure q[12];