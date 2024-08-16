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

qubit[9] q;
bit[9] meas;
ry(4.84635053289793) q[0];
ry(0.130388343310326) q[1];
cx q[0],q[1];
ry(3.98132927960905) q[2];
cx q[0],q[2];
cx q[1],q[2];
ry(4.70487355272564) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
ry(3.13221193522563) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
ry(1.41243898030268) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
ry(1.24446568175557) q[6];
cx q[0],q[6];
cx q[1],q[6];
cx q[2],q[6];
cx q[3],q[6];
cx q[4],q[6];
cx q[5],q[6];
ry(4.77855539654732) q[7];
cx q[0],q[7];
cx q[1],q[7];
cx q[2],q[7];
cx q[3],q[7];
cx q[4],q[7];
cx q[5],q[7];
cx q[6],q[7];
ry(1.06255472357457) q[8];
cx q[0],q[8];
ry(0.555055422457116) q[0];
cx q[1],q[8];
ry(4.30624274089981) q[1];
cx q[0],q[1];
cx q[2],q[8];
ry(5.99034706477481) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[8];
ry(0.024807688980384) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
cx q[4],q[8];
ry(3.21819890375657) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
cx q[5],q[8];
ry(5.10584808655871) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
cx q[6],q[8];
ry(3.84861478336691) q[6];
cx q[0],q[6];
cx q[1],q[6];
cx q[2],q[6];
cx q[3],q[6];
cx q[4],q[6];
cx q[5],q[6];
cx q[7],q[8];
ry(4.53492240586622) q[7];
cx q[0],q[7];
cx q[1],q[7];
cx q[2],q[7];
cx q[3],q[7];
cx q[4],q[7];
cx q[5],q[7];
cx q[6],q[7];
ry(1.83391142304707) q[8];
cx q[0],q[8];
ry(5.76654488188296) q[0];
cx q[1],q[8];
ry(4.48981206311071) q[1];
cx q[0],q[1];
cx q[2],q[8];
ry(3.40890680158139) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[8];
ry(0.893280754210937) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
cx q[4],q[8];
ry(2.34576917812665) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
cx q[5],q[8];
ry(4.23570642526072) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
cx q[6],q[8];
ry(2.77611970975908) q[6];
cx q[0],q[6];
cx q[1],q[6];
cx q[2],q[6];
cx q[3],q[6];
cx q[4],q[6];
cx q[5],q[6];
cx q[7],q[8];
ry(2.72699034602209) q[7];
cx q[0],q[7];
cx q[1],q[7];
cx q[2],q[7];
cx q[3],q[7];
cx q[4],q[7];
cx q[5],q[7];
cx q[6],q[7];
ry(3.88154440237914) q[8];
cx q[0],q[8];
ry(3.2241426661697) q[0];
cx q[1],q[8];
ry(4.0865660173428) q[1];
cx q[2],q[8];
ry(3.77643912107403) q[2];
cx q[3],q[8];
ry(5.05936655933969) q[3];
cx q[4],q[8];
ry(3.27760572345175) q[4];
cx q[5],q[8];
ry(5.7092092972822) q[5];
cx q[6],q[8];
ry(2.0058195038543) q[6];
cx q[7],q[8];
ry(0.568372854235992) q[7];
ry(1.88935417772466) q[8];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];
meas[6] = measure q[6];
meas[7] = measure q[7];
meas[8] = measure q[8];