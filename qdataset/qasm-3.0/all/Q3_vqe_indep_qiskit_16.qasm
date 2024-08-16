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

qubit[16] q;
bit[16] meas;
ry(3.13973894554034) q[0];
ry(1.4925136011457) q[1];
ry(-8.9920665716782e-5) q[2];
ry(-1.23257522218457) q[3];
ry(1.86054637652338) q[4];
ry(2.61201045851137) q[5];
ry(0.319115428371679) q[6];
ry(-1.47022955753925) q[7];
ry(-2.12360657717647) q[8];
ry(2.37397708003484) q[9];
ry(-2.07913035042815) q[10];
ry(-2.92960134875116) q[11];
ry(2.83093527610263) q[12];
ry(-0.0127668597893102) q[13];
ry(-1.57124469944394) q[14];
ry(pi) q[15];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
ry(1.57079329385953) q[11];
ry(1.57076320854782) q[12];
ry(-1.57081961034328) q[13];
ry(1.47379781943072) q[14];
ry(1.47389144321857) q[15];
cx q[14],q[15];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
ry(1.78274501735686) q[12];
ry(-1.26033905435792) q[13];
ry(1.55796048690872) q[14];
ry(pi) q[15];
cx q[9],q[10];
ry(1.57083940178388) q[10];
cx q[10],q[11];
ry(-0.508317471527251) q[11];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(3.08922570257331) q[0];
ry(-0.248645933369785) q[1];
ry(0.249379145067341) q[2];
ry(-1.57092146383541) q[3];
ry(-1.5707704269882) q[4];
ry(-1.57073354865701) q[5];
ry(-1.57081347984267) q[6];
ry(1.57076694138358) q[7];
ry(-1.57079002828038) q[8];
ry(1.57094441646279) q[9];
cx q[9],q[10];
ry(-2.3384683897403) q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-0.0524172519797756) q[0];
ry(1.64677588035859) q[1];
ry(-0.0193121701337888) q[2];
ry(-0.332992055921446) q[3];
ry(0.338261348290758) q[4];
ry(-0.289668053994937) q[5];
ry(-1.16523586650075) q[6];
ry(-1.25167089132833) q[7];
ry(-3.04098757877868) q[8];
ry(0.552777507970122) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15];
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
meas[14] = measure q[14];
meas[15] = measure q[15];