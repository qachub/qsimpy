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

qubit[6] q;
bit[6] meas;
ry(-0.0354460767301257) q[0];
ry(5.20088107336785) q[1];
cz q[0],q[1];
ry(3.64372636880429) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(-3.482974630623) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(5.33240988132262) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
ry(5.08196583192146) q[5];
cz q[0],q[5];
ry(-0.272545702496558) q[0];
cz q[1],q[5];
ry(-4.48856076236235) q[1];
cz q[0],q[1];
cz q[2],q[5];
ry(-2.58037806665168) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[5];
ry(6.18446878183794) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[5];
ry(3.26197802165438) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
ry(-2.96563837313116) q[5];
cz q[0],q[5];
ry(-2.05271224875749) q[0];
cz q[1],q[5];
ry(-3.08121124875778) q[1];
cz q[0],q[1];
cz q[2],q[5];
ry(-0.977108561168253) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[5];
ry(0.0805994994128678) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[5];
ry(3.33776371637259) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
ry(0.670469032209029) q[5];
cz q[0],q[5];
ry(0.0394191613118862) q[0];
cz q[1],q[5];
ry(-4.7720163097634) q[1];
cz q[2],q[5];
ry(-4.04351000957572) q[2];
cz q[3],q[5];
ry(-1.11269780613378) q[3];
cz q[4],q[5];
ry(5.41691138954076) q[4];
ry(5.26213106161665) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];