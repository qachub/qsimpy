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
gate rzz(theta) a,b
{
  cx a,b;
  u3(0,0,theta) b;
  cx a,b;
}

// relative-phase CCX

// relative-phase 3-controlled X gate

// 3-controlled X gate

// 3-controlled sqrt(X) gate, this equals the C3X gate 
// where the CU1 rotations are -pi/8 not -pi/4

// 4-controlled X gate 

qubit[2] q;
bit[2] meas;
rx(pi/2) q[0];
rx(pi/2) q[1];
rzz(1.304903297657757) q[0],q[1];
u2(-pi/2,-pi) q[0];
rx(-pi/2) q[1];
cx q[1],q[0];
rz(3.2220464314480877) q[0];
cx q[1],q[0];
u2(0.7144206217376547,-pi) q[0];
u3(pi,pi/2,-pi/2) q[1];
cx q[1],q[0];
ry(-3.0062717024781365) q[0];
ry(3.0062717024781365) q[1];
cx q[1],q[0];
u1(-2.6682620430456936) q[0];
u2(-pi,-pi) q[1];
barrier q[0],q[1];
meas[0] = measure q[0];
meas[1] = measure q[1];