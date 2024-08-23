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
ry(4.84635053289793) q[0];
ry(0.130388343310326) q[1];
cx q[0],q[1];
ry(3.98132927960905) q[2];
cx q[0],q[2];
cx q[1],q[2];
ry(4.70487355272564) q[3];
cx q[0],q[3];
ry(3.13221193522563) q[0];
cx q[1],q[3];
ry(1.41243898030268) q[1];
cx q[0],q[1];
cx q[2],q[3];
ry(1.24446568175557) q[2];
cx q[0],q[2];
cx q[1],q[2];
ry(4.77855539654732) q[3];
cx q[0],q[3];
ry(1.06255472357457) q[0];
cx q[1],q[3];
ry(0.555055422457116) q[1];
cx q[0],q[1];
cx q[2],q[3];
ry(4.30624274089981) q[2];
cx q[0],q[2];
cx q[1],q[2];
ry(5.99034706477481) q[3];
cx q[0],q[3];
ry(0.024807688980384) q[0];
cx q[1],q[3];
ry(3.21819890375657) q[1];
cx q[2],q[3];
ry(5.10584808655871) q[2];
ry(3.84861478336691) q[3];
barrier q[0],q[1],q[2],q[3];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];