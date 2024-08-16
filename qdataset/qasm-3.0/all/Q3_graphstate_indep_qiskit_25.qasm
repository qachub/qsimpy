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

qubit[25] q;
bit[25] meas;
h q[0];
h q[1];
cz q[0],q[1];
h q[2];
cz q[0],q[2];
h q[3];
h q[4];
cz q[3],q[4];
h q[5];
h q[6];
cz q[5],q[6];
h q[7];
h q[8];
cz q[5],q[8];
cz q[7],q[8];
h q[9];
h q[10];
cz q[9],q[10];
h q[11];
h q[12];
cz q[11],q[12];
h q[13];
cz q[9],q[13];
h q[14];
cz q[4],q[14];
cz q[13],q[14];
h q[15];
h q[16];
cz q[15],q[16];
h q[17];
cz q[12],q[17];
h q[18];
cz q[7],q[18];
cz q[17],q[18];
h q[19];
cz q[11],q[19];
h q[20];
cz q[2],q[20];
cz q[19],q[20];
h q[21];
cz q[6],q[21];
h q[22];
cz q[10],q[22];
cz q[16],q[22];
h q[23];
cz q[1],q[23];
cz q[21],q[23];
h q[24];
cz q[3],q[24];
cz q[15],q[24];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24];
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
meas[16] = measure q[16];
meas[17] = measure q[17];
meas[18] = measure q[18];
meas[19] = measure q[19];
meas[20] = measure q[20];
meas[21] = measure q[21];
meas[22] = measure q[22];
meas[23] = measure q[23];
meas[24] = measure q[24];