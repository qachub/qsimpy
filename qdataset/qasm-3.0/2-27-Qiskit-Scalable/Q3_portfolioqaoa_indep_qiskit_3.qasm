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
bit[3] meas0;
u2(2.036437549524557,-pi) q[0];
u2(2.032896542906201,-pi) q[1];
rzz(4.249961923303923) q[0],q[1];
u2(2.2370581669510594,-pi) q[2];
rzz(4.249912977007575) q[0],q[2];
u3(1.5285362877286641,1.9468655941518964,pi/2) q[0];
rzz(4.251020867204194) q[1],q[2];
u3(1.5285362877286641,1.944559656250071,pi/2) q[1];
rzz(2.7676164821208684) q[0],q[1];
u3(1.5285362877286641,2.0775116887435416,pi/2) q[2];
rzz(2.767584607817297) q[0],q[2];
u3(2.419650473543708,-1.2637545775025705,pi/2) q[0];
rzz(2.7683060766736958) q[1],q[2];
u3(2.4196504735437077,-1.2687375821683353,pi/2) q[1];
rzz(5.980666622696558) q[0],q[1];
u3(2.4196504735437077,-0.9814355703866902,pi/2) q[2];
rzz(5.98059774408396) q[0],q[2];
rx(-7.80491894983683) q[0];
rzz(5.982156798503766) q[1],q[2];
rx(-7.80491894983683) q[1];
rx(-7.80491894983683) q[2];
barrier q[0],q[1],q[2];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
barrier q[0],q[1],q[2];
meas0[0] = measure q[0];
meas0[1] = measure q[1];
meas0[2] = measure q[2];