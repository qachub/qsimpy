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

qubit[4] q;
bit[4] meas;
bit[4] meas1;
u2(0.004589694711297554,-pi) q[0];
u2(0.034393278841671204,-pi) q[1];
rzz(2.5797101980239785) q[0],q[1];
u2(-0.003340026125658646,-pi) q[2];
rzz(2.5798185572649612) q[0],q[2];
rzz(2.579780868154737) q[1],q[2];
u2(0.010342378798725349,-pi) q[3];
rzz(2.5796299948259818) q[0],q[3];
u3(0.24388738017928277,1.564450533360409,-pi/2) q[0];
rzz(2.5796752798936557) q[1],q[3];
u3(0.2438873801792828,1.523243568541341,-pi/2) q[1];
rzz(-3.5667531431238766) q[0],q[1];
rzz(2.5797007358045723) q[2],q[3];
u3(0.2438873801792828,1.5754143062450439,-pi/2) q[2];
rzz(-3.566902962535242) q[0],q[2];
rzz(-3.566850852901976) q[1],q[2];
u3(0.2438873801792828,1.5564967701563308,-pi/2) q[3];
rzz(-3.566642252757679) q[0],q[3];
u3(0.541120123601504,1.5654755193828702,-pi/2) q[0];
rzz(-3.566704864696643) q[1],q[3];
u3(0.541120123601504,1.5309243909700134,-pi/2) q[1];
rzz(-2.990643606150888) q[0],q[1];
rzz(-3.5667400604912483) q[2],q[3];
u3(0.541120123601504,1.574668400404068,-pi/2) q[2];
rzz(-2.990769226412986) q[0],q[2];
rzz(-2.9907255336382708) q[1],q[2];
u3(0.541120123601504,1.5588064648908384,-pi/2) q[3];
rzz(-2.990550627031968) q[0],q[3];
rx(2.2765636643147387) q[0];
rzz(-2.9906031257576764) q[1],q[3];
rx(2.2765636643147387) q[1];
rzz(-2.9906326366528453) q[2],q[3];
rx(2.2765636643147387) q[2];
rx(2.2765636643147387) q[3];
barrier q[0],q[1],q[2],q[3];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
barrier q[0],q[1],q[2],q[3];
meas1[0] = measure q[0];
meas1[1] = measure q[1];
meas1[2] = measure q[2];
meas1[3] = measure q[3];