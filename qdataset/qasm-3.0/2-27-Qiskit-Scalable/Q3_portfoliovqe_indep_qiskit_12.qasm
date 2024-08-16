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

qubit[12] q;
bit[12] meas;
ry(3.50491109307107) q[0];
ry(2.64322375428348) q[1];
cz q[0],q[1];
ry(5.12014902336407) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(1.14448104358752) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(2.77853350700858) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
ry(0.541930057716443) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
ry(-5.68621296307379) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
ry(2.21001081094281) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
ry(2.05609248254775) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
ry(0.743077360983281) q[9];
cz q[0],q[9];
cz q[1],q[9];
cz q[2],q[9];
cz q[3],q[9];
cz q[4],q[9];
cz q[5],q[9];
cz q[6],q[9];
cz q[7],q[9];
cz q[8],q[9];
ry(0.0183194157778486) q[10];
cz q[0],q[10];
cz q[1],q[10];
cz q[2],q[10];
cz q[3],q[10];
cz q[4],q[10];
cz q[5],q[10];
cz q[6],q[10];
cz q[7],q[10];
cz q[8],q[10];
cz q[9],q[10];
ry(-3.55705686973368) q[11];
cz q[0],q[11];
ry(-1.93663139142742) q[0];
cz q[1],q[11];
ry(-2.39546814645793) q[1];
cz q[0],q[1];
cz q[2],q[11];
ry(-2.43694124777376) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[11];
ry(6.10785308042509) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[11];
ry(5.71140467812245) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[11];
ry(5.64116190605885) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[11];
ry(1.83097800104368) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
cz q[7],q[11];
ry(0.0257642175279189) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
cz q[8],q[11];
ry(3.48052325291931) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
cz q[9],q[11];
cz q[10],q[11];
ry(3.36459543719365) q[10];
ry(5.7985704827413) q[11];
ry(4.41510863905142) q[9];
cz q[0],q[9];
cz q[0],q[10];
cz q[0],q[11];
ry(-3.45734778276665) q[0];
cz q[1],q[9];
cz q[1],q[10];
cz q[1],q[11];
ry(-5.58790806380365) q[1];
cz q[0],q[1];
cz q[2],q[9];
cz q[2],q[10];
cz q[2],q[11];
ry(2.15508798388169) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[9];
cz q[3],q[10];
cz q[3],q[11];
ry(-3.70290647788774) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[9];
cz q[4],q[10];
cz q[4],q[11];
ry(5.24284796944282) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[9];
cz q[5],q[10];
cz q[5],q[11];
ry(-4.40167750015634) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[9];
cz q[6],q[10];
cz q[6],q[11];
ry(3.86091285981459) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
cz q[7],q[9];
cz q[7],q[10];
cz q[7],q[11];
ry(4.92625556359366) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
cz q[8],q[9];
cz q[8],q[10];
cz q[8],q[11];
ry(3.9384741336645) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
cz q[9],q[10];
cz q[9],q[11];
cz q[10],q[11];
ry(2.22772231004021) q[10];
ry(-4.77742204948889) q[11];
ry(3.17698674487604) q[9];
cz q[0],q[9];
cz q[0],q[10];
cz q[0],q[11];
ry(-2.59071687769183) q[0];
cz q[1],q[9];
cz q[1],q[10];
cz q[1],q[11];
ry(3.49913820545828) q[1];
cz q[2],q[9];
cz q[2],q[10];
cz q[2],q[11];
ry(-0.342715468201047) q[2];
cz q[3],q[9];
cz q[3],q[10];
cz q[3],q[11];
ry(3.21228455824442) q[3];
cz q[4],q[9];
cz q[4],q[10];
cz q[4],q[11];
ry(-1.15579539704825) q[4];
cz q[5],q[9];
cz q[5],q[10];
cz q[5],q[11];
ry(-5.2371358090519) q[5];
cz q[6],q[9];
cz q[6],q[10];
cz q[6],q[11];
ry(-5.40444082450604) q[6];
cz q[7],q[9];
cz q[7],q[10];
cz q[7],q[11];
ry(-4.00911217870252) q[7];
cz q[8],q[9];
cz q[8],q[10];
cz q[8],q[11];
ry(3.10903683509243) q[8];
cz q[9],q[10];
cz q[9],q[11];
cz q[10],q[11];
ry(3.52218868778839) q[10];
ry(-4.99028636095553) q[11];
ry(4.13782206575375) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11];
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