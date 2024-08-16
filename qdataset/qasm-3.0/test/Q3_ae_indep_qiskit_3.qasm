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

qubit[2] eval;

qubit[1] q;
bit[3] meas;
u2(0,-pi) eval[0];
u2(0,-pi) eval[1];
u3(0.9272952180016122,0,0) q[0];
cx eval[0],q[0];
U(-0.9272952180016122,0,0) q[0];cx eval[0],q[0];
u3(0.9272952180016122,0,0) q[0];
cx eval[1],q[0];
U(-1.8545904360032244,0,0) q[0];cx eval[1],q[0];
U(1.8545904360032244,0,0) q[0];h eval[1];
cp(-pi/2) eval[0],eval[1];
h eval[0];
barrier eval[0],eval[1],q[0];
meas[0] = measure eval[0];
meas[1] = measure eval[1];
meas[2] = measure q[0];