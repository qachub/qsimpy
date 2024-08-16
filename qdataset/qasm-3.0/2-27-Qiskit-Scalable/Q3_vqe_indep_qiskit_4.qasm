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
ry(-0.0972176287431798) q[0];
ry(-pi) q[1];
ry(-1.60128522314631) q[2];
ry(-0.131031131824132) q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-2.03974673213804) q[0];
ry(1.52166781607207) q[1];
ry(-2.91341164660983) q[2];
ry(0.226125934504665) q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-2.03747697749537) q[0];
ry(-1.67976962821752) q[1];
ry(1.5708841045861) q[2];
ry(0.134448237161056) q[3];
barrier q[0],q[1],q[2],q[3];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];