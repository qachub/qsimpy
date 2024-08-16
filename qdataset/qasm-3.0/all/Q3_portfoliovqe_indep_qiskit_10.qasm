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

qubit[10] q;
bit[10] meas;
ry(-0.576539873536047) q[0];
ry(5.64543392874602) q[1];
cz q[0],q[1];
ry(-5.22417769465542) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(5.8019834259526) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(0.683067087339015) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
ry(5.8679986072537) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
ry(1.29670038602815) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
ry(-1.40388599439815) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
ry(2.88531238243724) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
ry(5.7412253587223) q[9];
cz q[0],q[9];
ry(3.36989884764869) q[0];
cz q[1],q[9];
ry(3.48156435979564) q[1];
cz q[0],q[1];
cz q[2],q[9];
ry(-3.24788125970327) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[9];
ry(-5.04563245759487) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[9];
ry(-6.22309402840434) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[9];
ry(-3.12095760832283) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[9];
ry(-0.431669218988606) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
cz q[7],q[9];
ry(-4.8417471169767) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
cz q[8],q[9];
ry(1.20950735307679) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
ry(6.1861907242862) q[9];
cz q[0],q[9];
ry(-6.27029513639077) q[0];
cz q[1],q[9];
ry(-3.76372650364395) q[1];
cz q[0],q[1];
cz q[2],q[9];
ry(0.665986428237026) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[9];
ry(-3.8553327541586) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[9];
ry(5.65607179871792) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[9];
ry(4.27481351806293) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[9];
ry(-4.52876781330342) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
cz q[7],q[9];
ry(-4.21671936733496) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
cz q[8],q[9];
ry(0.549313331085146) q[8];
cz q[0],q[8];
cz q[1],q[8];
cz q[2],q[8];
cz q[3],q[8];
cz q[4],q[8];
cz q[5],q[8];
cz q[6],q[8];
cz q[7],q[8];
ry(2.90027846018322) q[9];
cz q[0],q[9];
ry(1.50327975522012) q[0];
cz q[1],q[9];
ry(-2.58023861599429) q[1];
cz q[2],q[9];
ry(-2.27419509594214) q[2];
cz q[3],q[9];
ry(3.74810334196483) q[3];
cz q[4],q[9];
ry(1.40907623695463) q[4];
cz q[5],q[9];
ry(-0.344678265879813) q[5];
cz q[6],q[9];
ry(4.46885640575702) q[6];
cz q[7],q[9];
ry(-4.37308075371836) q[7];
cz q[8],q[9];
ry(5.73426426861271) q[8];
ry(6.16166735861897) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9];
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