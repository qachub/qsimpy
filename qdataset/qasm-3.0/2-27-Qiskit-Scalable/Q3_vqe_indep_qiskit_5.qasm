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
ry(-0.00050853209077915) q[0];
ry(1.60474982892674) q[1];
ry(3.11696462134292) q[2];
ry(0.631337687303728) q[3];
ry(1.37038897297872) q[4];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.48258216794544) q[0];
ry(1.14915357797252) q[1];
ry(1.99229667732523) q[2];
ry(-1.61257187755989) q[3];
ry(-2.88668406207188) q[4];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.6590365094725) q[0];
ry(-1.57123032572138) q[1];
ry(0.0280552541388008) q[2];
ry(-1.63019698838745) q[3];
ry(-1.72268536272118) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];