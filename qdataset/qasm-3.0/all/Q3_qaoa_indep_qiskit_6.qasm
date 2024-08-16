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

qubit[6] q;
bit[6] meas;
h q[0];
h q[1];
h q[2];
rzz(-1.8521391244334475) q[0],q[2];
h q[3];
rzz(-1.8521391244334475) q[0],q[3];
rx(10.069503014678693) q[0];
h q[4];
rzz(-1.8521391244334475) q[1],q[4];
rzz(-1.8521391244334475) q[2],q[4];
rx(10.069503014678693) q[2];
rzz(-0.6447275075138147) q[0],q[2];
rx(10.069503014678693) q[4];
h q[5];
rzz(-1.8521391244334475) q[1],q[5];
rx(10.069503014678693) q[1];
rzz(-0.6447275075138147) q[1],q[4];
rzz(-0.6447275075138147) q[2],q[4];
rx(4.9937354315365) q[2];
rzz(-1.8521391244334475) q[3],q[5];
rx(10.069503014678693) q[3];
rzz(-0.6447275075138147) q[0],q[3];
rx(4.9937354315365) q[0];
rx(4.9937354315365) q[4];
rx(10.069503014678693) q[5];
rzz(-0.6447275075138147) q[1],q[5];
rx(4.9937354315365) q[1];
rzz(-0.6447275075138147) q[3],q[5];
rx(4.9937354315365) q[3];
rx(4.9937354315365) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];