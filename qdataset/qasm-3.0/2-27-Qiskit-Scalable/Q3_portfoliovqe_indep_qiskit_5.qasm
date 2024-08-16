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
ry(-5.48681214738515) q[0];
ry(6.17430358738484) q[1];
cz q[0],q[1];
ry(-2.48211471276918) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(-4.87073612147293) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(-1.13225298444705) q[4];
cz q[0],q[4];
ry(1.48976006426089) q[0];
cz q[1],q[4];
ry(-5.70472180821892) q[1];
cz q[0],q[1];
cz q[2],q[4];
ry(4.73160065476197) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[4];
ry(-0.976675728274714) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(3.94275633297612) q[4];
cz q[0],q[4];
ry(-0.930600976197059) q[0];
cz q[1],q[4];
ry(-4.09301167598876) q[1];
cz q[0],q[1];
cz q[2],q[4];
ry(-4.44929727040748) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[4];
ry(-5.14922111308235) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(5.36795345777456) q[4];
cz q[0],q[4];
ry(-4.94728127471714) q[0];
cz q[1],q[4];
ry(-0.166201936680721) q[1];
cz q[2],q[4];
ry(-4.11536885095106) q[2];
cz q[3],q[4];
ry(-0.893201142031406) q[3];
ry(-4.14563312095378) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];