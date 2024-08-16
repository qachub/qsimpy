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

qubit[15] q;
bit[15] c;
bit[15] meas;
h q[14];
cp(pi/2) q[14],q[13];
h q[13];
cp(pi/4) q[14],q[12];
cp(pi/2) q[13],q[12];
h q[12];
cp(pi/8) q[14],q[11];
cp(pi/4) q[13],q[11];
cp(pi/2) q[12],q[11];
h q[11];
cp(pi/16) q[14],q[10];
cp(pi/8) q[13],q[10];
cp(pi/4) q[12],q[10];
cp(pi/2) q[11],q[10];
h q[10];
cp(pi/32) q[14],q[9];
cp(pi/16) q[13],q[9];
cp(pi/8) q[12],q[9];
cp(pi/4) q[11],q[9];
cp(pi/2) q[10],q[9];
cp(pi/64) q[14],q[8];
cp(pi/32) q[13],q[8];
cp(pi/16) q[12],q[8];
cp(pi/8) q[11],q[8];
cp(pi/4) q[10],q[8];
cp(pi/128) q[14],q[7];
cp(pi/64) q[13],q[7];
cp(pi/32) q[12],q[7];
cp(pi/16) q[11],q[7];
cp(pi/8) q[10],q[7];
cp(pi/256) q[14],q[6];
cp(pi/128) q[13],q[6];
cp(pi/64) q[12],q[6];
cp(pi/32) q[11],q[6];
cp(pi/16) q[10],q[6];
cp(pi/512) q[14],q[5];
cp(pi/256) q[13],q[5];
cp(pi/128) q[12],q[5];
cp(pi/64) q[11],q[5];
cp(pi/32) q[10],q[5];
cp(pi/1024) q[14],q[4];
cp(pi/512) q[13],q[4];
cp(pi/256) q[12],q[4];
cp(pi/128) q[11],q[4];
cp(pi/64) q[10],q[4];
cp(pi/2048) q[14],q[3];
cp(pi/1024) q[13],q[3];
cp(pi/512) q[12],q[3];
cp(pi/256) q[11],q[3];
cp(pi/128) q[10],q[3];
cp(pi/4096) q[14],q[2];
cp(pi/2048) q[13],q[2];
cp(pi/1024) q[12],q[2];
cp(pi/512) q[11],q[2];
cp(pi/256) q[10],q[2];
cp(pi/8192) q[14],q[1];
cp(pi/4096) q[13],q[1];
cp(pi/2048) q[12],q[1];
cp(pi/1024) q[11],q[1];
cp(pi/512) q[10],q[1];
cp(pi/16384) q[14],q[0];
cp(pi/8192) q[13],q[0];
cp(pi/4096) q[12],q[0];
cp(pi/2048) q[11],q[0];
cp(pi/1024) q[10],q[0];
h q[9];
cp(pi/2) q[9],q[8];
h q[8];
cp(pi/4) q[9],q[7];
cp(pi/2) q[8],q[7];
h q[7];
cp(pi/8) q[9],q[6];
cp(pi/4) q[8],q[6];
cp(pi/2) q[7],q[6];
h q[6];
cp(pi/16) q[9],q[5];
cp(pi/8) q[8],q[5];
cp(pi/4) q[7],q[5];
cp(pi/2) q[6],q[5];
h q[5];
cp(pi/32) q[9],q[4];
cp(pi/16) q[8],q[4];
cp(pi/8) q[7],q[4];
cp(pi/4) q[6],q[4];
cp(pi/2) q[5],q[4];
h q[4];
cp(pi/64) q[9],q[3];
cp(pi/32) q[8],q[3];
cp(pi/16) q[7],q[3];
cp(pi/8) q[6],q[3];
cp(pi/4) q[5],q[3];
cp(pi/2) q[4],q[3];
h q[3];
cp(pi/128) q[9],q[2];
cp(pi/64) q[8],q[2];
cp(pi/32) q[7],q[2];
cp(pi/16) q[6],q[2];
cp(pi/8) q[5],q[2];
cp(pi/4) q[4],q[2];
cp(pi/2) q[3],q[2];
h q[2];
cp(pi/256) q[9],q[1];
cp(pi/128) q[8],q[1];
cp(pi/64) q[7],q[1];
cp(pi/32) q[6],q[1];
cp(pi/16) q[5],q[1];
cp(pi/8) q[4],q[1];
cp(pi/4) q[3],q[1];
cp(pi/2) q[2],q[1];
h q[1];
cp(pi/512) q[9],q[0];
cp(pi/256) q[8],q[0];
cp(pi/128) q[7],q[0];
cp(pi/64) q[6],q[0];
cp(pi/32) q[5],q[0];
cp(pi/16) q[4],q[0];
cp(pi/8) q[3],q[0];
cp(pi/4) q[2],q[0];
cp(pi/2) q[1],q[0];
h q[0];
swap q[0],q[14];
swap q[1],q[13];
swap q[2],q[12];
swap q[3],q[11];
swap q[4],q[10];
swap q[5],q[9];
swap q[6],q[8];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14];
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