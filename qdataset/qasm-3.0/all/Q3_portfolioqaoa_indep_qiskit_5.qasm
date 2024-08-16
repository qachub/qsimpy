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

qubit[5] q;
bit[5] meas;
bit[5] meas2;
u2(-0.12054467858893769,-pi) q[0];
u2(-0.12038037398779178,-pi) q[1];
rzz(0.12067349958194906) q[0],q[1];
u2(-0.11756026898641281,-pi) q[2];
rzz(0.12067453244853961) q[0],q[2];
rzz(0.12059863317861329) q[1],q[2];
u2(-0.11996613078974505,-pi) q[3];
rzz(0.120688659182487) q[0],q[3];
rzz(0.120671978674341) q[1],q[3];
rzz(0.12054209858284833) q[2],q[3];
u2(-0.13005059021228949,-pi) q[4];
rzz(0.12066810842821551) q[0],q[4];
u3(1.3627418379144365,-1.1181912340212161,-pi/2) q[0];
rzz(0.1205574782365126) q[1],q[4];
u3(1.3627418379144365,-1.1145260948061186,-pi/2) q[1];
rzz(2.6918611679453024) q[0],q[1];
rzz(0.12106492288007926) q[2],q[4];
u3(1.3627418379144367,-1.051618073003172,-pi/2) q[2];
rzz(2.6918842080781933) q[0],q[2];
rzz(2.6901911246912205) q[1],q[2];
rzz(0.1204859738434579) q[3],q[4];
u3(1.3627418379144365,-1.1052855806686317,-pi/2) q[3];
rzz(2.6921993328294818) q[0],q[3];
rzz(2.691827241091897) q[1],q[3];
rzz(2.6889300086755883) q[2],q[3];
u3(1.3627418379144365,-1.3302394007974132,-pi/2) q[4];
rzz(2.691740907594554) q[0],q[4];
u3(0.7655213892885528,1.495649531828069,pi/2) q[0];
rzz(2.6892730822801387) q[1],q[4];
u3(0.7655213892885528,1.5000340065164082,pi/2) q[1];
rzz(3.2201770417782543) q[0],q[1];
rzz(2.7005926390646118) q[2],q[4];
u3(0.765521389288553,1.5752886184428316,pi/2) q[2];
rzz(3.2202046038634973) q[0],q[2];
rzz(3.2181792288859654) q[1],q[2];
rzz(2.6876780353173153) q[3],q[4];
u3(0.7655213892885528,1.5110881024089071,pi/2) q[3];
rzz(3.220581576309729) q[0],q[3];
rzz(3.2201364562994277) q[1],q[3];
rzz(3.2166706009935186) q[2],q[3];
u3(0.7655213892885528,1.2419839094939569,pi/2) q[4];
rzz(3.2200331786306564) q[0],q[4];
rx(-4.9985746655715255) q[0];
rzz(3.21708100765125) q[1],q[4];
rx(-4.9985746655715255) q[1];
rzz(3.2306221877516665) q[2],q[4];
rx(-4.9985746655715255) q[2];
rzz(3.2151729101344073) q[3],q[4];
rx(-4.9985746655715255) q[3];
rx(-4.9985746655715255) q[4];
barrier q[0],q[1],q[2],q[3],q[4];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
barrier q[0],q[1],q[2],q[3],q[4];
meas2[0] = measure q[0];
meas2[1] = measure q[1];
meas2[2] = measure q[2];
meas2[3] = measure q[3];
meas2[4] = measure q[4];