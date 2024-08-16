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

qubit[7] q;
bit[7] meas;
u2(2.0,-pi) q[0];
u2(2.0,-pi) q[1];
cx q[0],q[1];
p(9.17283818781952) q[1];
cx q[0],q[1];
u2(2.0,-pi) q[2];
cx q[0],q[2];
p(9.17283818781952) q[2];
cx q[0],q[2];
cx q[1],q[2];
p(9.17283818781952) q[2];
cx q[1],q[2];
u2(2.0,-pi) q[3];
cx q[0],q[3];
p(9.17283818781952) q[3];
cx q[0],q[3];
cx q[1],q[3];
p(9.17283818781952) q[3];
cx q[1],q[3];
cx q[2],q[3];
p(9.17283818781952) q[3];
cx q[2],q[3];
u2(2.0,-pi) q[4];
cx q[0],q[4];
p(9.17283818781952) q[4];
cx q[0],q[4];
cx q[1],q[4];
p(9.17283818781952) q[4];
cx q[1],q[4];
cx q[2],q[4];
p(9.17283818781952) q[4];
cx q[2],q[4];
cx q[3],q[4];
p(9.17283818781952) q[4];
cx q[3],q[4];
u2(2.0,-pi) q[5];
cx q[0],q[5];
p(9.17283818781952) q[5];
cx q[0],q[5];
cx q[1],q[5];
p(9.17283818781952) q[5];
cx q[1],q[5];
cx q[2],q[5];
p(9.17283818781952) q[5];
cx q[2],q[5];
cx q[3],q[5];
p(9.17283818781952) q[5];
cx q[3],q[5];
cx q[4],q[5];
p(9.17283818781952) q[5];
cx q[4],q[5];
u2(2.0,-pi) q[6];
cx q[0],q[6];
p(9.17283818781952) q[6];
cx q[0],q[6];
u2(2.0,-pi) q[0];
cx q[1],q[6];
p(9.17283818781952) q[6];
cx q[1],q[6];
u2(2.0,-pi) q[1];
cx q[0],q[1];
p(9.17283818781952) q[1];
cx q[0],q[1];
cx q[2],q[6];
p(9.17283818781952) q[6];
cx q[2],q[6];
u2(2.0,-pi) q[2];
cx q[0],q[2];
p(9.17283818781952) q[2];
cx q[0],q[2];
cx q[1],q[2];
p(9.17283818781952) q[2];
cx q[1],q[2];
cx q[3],q[6];
p(9.17283818781952) q[6];
cx q[3],q[6];
u2(2.0,-pi) q[3];
cx q[0],q[3];
p(9.17283818781952) q[3];
cx q[0],q[3];
cx q[1],q[3];
p(9.17283818781952) q[3];
cx q[1],q[3];
cx q[2],q[3];
p(9.17283818781952) q[3];
cx q[2],q[3];
cx q[4],q[6];
p(9.17283818781952) q[6];
cx q[4],q[6];
u2(2.0,-pi) q[4];
cx q[0],q[4];
p(9.17283818781952) q[4];
cx q[0],q[4];
cx q[1],q[4];
p(9.17283818781952) q[4];
cx q[1],q[4];
cx q[2],q[4];
p(9.17283818781952) q[4];
cx q[2],q[4];
cx q[3],q[4];
p(9.17283818781952) q[4];
cx q[3],q[4];
cx q[5],q[6];
p(9.17283818781952) q[6];
cx q[5],q[6];
u2(2.0,-pi) q[5];
cx q[0],q[5];
p(9.17283818781952) q[5];
cx q[0],q[5];
cx q[1],q[5];
p(9.17283818781952) q[5];
cx q[1],q[5];
cx q[2],q[5];
p(9.17283818781952) q[5];
cx q[2],q[5];
cx q[3],q[5];
p(9.17283818781952) q[5];
cx q[3],q[5];
cx q[4],q[5];
p(9.17283818781952) q[5];
cx q[4],q[5];
u2(2.0,-pi) q[6];
cx q[0],q[6];
p(9.17283818781952) q[6];
cx q[0],q[6];
ry(0.815891299658729) q[0];
cx q[1],q[6];
p(9.17283818781952) q[6];
cx q[1],q[6];
ry(0.956303547033143) q[1];
cx q[2],q[6];
p(9.17283818781952) q[6];
cx q[2],q[6];
ry(0.166177014084605) q[2];
cx q[3],q[6];
p(9.17283818781952) q[6];
cx q[3],q[6];
ry(0.00716778472560198) q[3];
cx q[4],q[6];
p(9.17283818781952) q[6];
cx q[4],q[6];
ry(0.549910808606812) q[4];
cx q[5],q[6];
p(9.17283818781952) q[6];
cx q[5],q[6];
ry(0.871497704548552) q[5];
ry(0.117394694059234) q[6];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(0.228932562324314) q[0];
ry(0.55400954002924) q[1];
ry(0.419649753704385) q[2];
ry(0.773620677134725) q[3];
ry(0.423242108973743) q[4];
ry(0.856493073254731) q[5];
ry(0.961425524125379) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];
meas[6] = measure q[6];