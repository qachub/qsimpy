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

qubit[3] q;
bit[3] meas;
h q[0];
h q[1];
rzz(6.84212273097045) q[0],q[1];
h q[2];
rzz(6.84212273097045) q[0],q[2];
rx(-0.42073950596148635) q[0];
rzz(6.84212273097045) q[1],q[2];
rx(-0.42073950596148635) q[1];
rzz(-6.153399127068727) q[0],q[1];
rx(-0.42073950596148635) q[2];
rzz(-6.153399127068727) q[0],q[2];
rx(-6.497223513925254) q[0];
rzz(-6.153399127068727) q[1],q[2];
rx(-6.497223513925254) q[1];
rx(-6.497223513925254) q[2];
barrier q[0],q[1],q[2];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];