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

qubit[12] q;
bit[12] meas;
ry(-1.5555015797139) q[0];
ry(1.55648082090147) q[1];
ry(1.45752327389653) q[2];
ry(1.52883432645728) q[3];
ry(pi) q[4];
ry(-1.56749509270454) q[5];
ry(-0.00111987408359359) q[6];
ry(-3.12806495206902) q[7];
ry(2.98413799309031) q[8];
ry(2.39168996219518) q[9];
ry(1.85706892954333) q[10];
ry(1.58152564686975) q[11];
cx q[10],q[11];
ry(pi) q[11];
cx q[9],q[10];
ry(-2.92982683287037) q[10];
cx q[10],q[11];
ry(1.56036768760093) q[11];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-1.56923992379576) q[0];
ry(-3.13238060137515) q[1];
ry(1.57098388317318) q[2];
ry(-1.57118048881771) q[3];
ry(1.57137887807056) q[4];
ry(2.62839519978053) q[5];
ry(-0.513225575794199) q[6];
ry(-1.57419693016507) q[7];
ry(-1.67458414577461) q[8];
ry(-2.30602028832571) q[9];
cx q[9],q[10];
ry(-1.3755346363998) q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.73876821857895) q[0];
ry(3.12656589615029) q[1];
ry(-0.0130977183278064) q[2];
ry(0.113511138404315) q[3];
ry(3.10014191141782) q[4];
ry(1.56801183039442) q[5];
ry(pi) q[6];
ry(-1.57263614958109) q[7];
ry(1.55771494643608) q[8];
ry(-1.69148892296053) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11];
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