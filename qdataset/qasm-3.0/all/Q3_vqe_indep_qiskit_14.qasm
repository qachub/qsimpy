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

qubit[14] q;
bit[14] meas;
ry(3.11660197832289) q[0];
ry(1.9092437973168) q[1];
ry(1.83665402916141) q[2];
ry(1.92828997350711) q[3];
ry(1.56040438802366) q[4];
ry(1.67650044099787) q[5];
ry(pi) q[6];
ry(-0.484684372019612) q[7];
ry(-1.55824389634716) q[8];
ry(-1.57032728548193) q[9];
ry(-1.57068044538476) q[10];
ry(1.57084762248624) q[11];
ry(1.57085726068862) q[12];
ry(1.57084872799031) q[13];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
ry(pi) q[11];
ry(-3.14158117693921) q[12];
ry(-3.14158037721381) q[13];
cx q[12],q[13];
cx q[11],q[12];
ry(-1.57067832351632) q[12];
ry(1.5706069159492) q[13];
cx q[9],q[10];
ry(-0.000125690802693412) q[10];
cx q[10],q[11];
ry(-1.57092096001889) q[11];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.6516883297605) q[0];
ry(1.57046381512143) q[1];
ry(-1.57101104151202) q[2];
ry(-1.57097096583357) q[3];
ry(1.5707077912573) q[4];
ry(1.5709707997776) q[5];
ry(1.57074987190045) q[6];
ry(2.05549013956867) q[7];
ry(3.1305737028064) q[8];
ry(0.000199988032836607) q[9];
cx q[9],q[10];
ry(1.57074761411704) q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-1.48984605225397) q[0];
ry(-1.59589372697576) q[1];
ry(-0.338092188233879) q[2];
ry(-0.265522793520176) q[3];
ry(2.7836095591851) q[4];
ry(3.13106037736717) q[5];
ry(0.106056347332031) q[6];
ry(-1.57068951530184) q[7];
ry(1.56486377213428) q[8];
ry(-1.57159883863032) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];
meas[6] = measure q[6];
meas[7] = measure q[7];
meas[8] = measure q[8];
meas[9] = measure q[9];
meas[10] = measure q[10];
meas[11] = measure q[11];
meas[12] = measure q[12];
meas[13] = measure q[13];