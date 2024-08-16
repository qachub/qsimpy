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

qubit[15] eval;

qubit[1] q;
bit[16] meas;
u2(0,-pi) eval[0];
u2(0,-pi) eval[1];
u2(0,-pi) eval[2];
u2(0,-pi) eval[3];
u2(0,-pi) eval[4];
u2(0,-pi) eval[5];
u2(0,-pi) eval[6];
u2(0,-pi) eval[7];
u2(0,-pi) eval[8];
u2(0,-pi) eval[9];
u2(0,-pi) eval[10];
u2(0,-pi) eval[11];
u2(0,-pi) eval[12];
u2(0,-pi) eval[13];
u2(0,-pi) eval[14];
u3(0.9272952180016122,0,0) q[0];
cx eval[0],q[0];
U(-0.9272952180016122,0,0) q[0];cx eval[0],q[0];
u3(0.9272952180016122,0,0) q[0];
cx eval[1],q[0];
U(-1.8545904360032244,0,0) q[0];cx eval[1],q[0];
u3(1.8545904360032242,0,0) q[0];
cx eval[2],q[0];
U(-3.7091808720064487,0,0) q[0];cx eval[2],q[0];
u3(2.574004435173138,-pi,-pi) q[0];
cx eval[3],q[0];
U(-7.4183617440128975,0,0) q[0];cx eval[3],q[0];
u3(1.135176436833311,0,0) q[0];
cx eval[4],q[0];
U(-14.836723488025795,0,0) q[0];cx eval[4],q[0];
u3(2.270352873666622,0,0) q[0];
cx eval[5],q[0];
U(-29.67344697605159,0,0) q[0];cx eval[5],q[0];
u3(1.7424795598463425,-pi,-pi) q[0];
cx eval[6],q[0];
U(-59.34689395210318,0,0) q[0];cx eval[6],q[0];
u3(2.7982261874869017,0,0) q[0];
cx eval[7],q[0];
U(-118.69378790420636,0,0) q[0];cx eval[7],q[0];
u3(0.6867329322057831,-pi,-pi) q[0];
cx eval[8],q[0];
U(-237.38757580841272,0,0) q[0];cx eval[8],q[0];
u3(1.3734658644115663,-pi,-pi) q[0];
cx eval[9],q[0];
U(-474.77515161682544,0,0) q[0];cx eval[9],q[0];
u3(2.7469317288231325,-pi,-pi) q[0];
cx eval[10],q[0];
U(-949.5503032336509,0,0) q[0];cx eval[10],q[0];
u3(0.7893218495333214,0,0) q[0];
cx eval[11],q[0];
U(-1899.1006064673018,0,0) q[0];cx eval[11],q[0];
u3(1.578643699066643,0,0) q[0];
cx eval[12],q[0];
U(-3798.2012129346035,0,0) q[0];cx eval[12],q[0];
u3(3.1258979090463006,-pi,-pi) q[0];
cx eval[13],q[0];
U(-7596.402425869207,0,0) q[0];cx eval[13],q[0];
u3(0.03138948908698556,0,0) q[0];
cx eval[14],q[0];
U(-15192.804851738414,0,0) q[0];cx eval[14],q[0];
U(15192.804851738414,0,0) q[0];h eval[14];
cp(-pi/2) eval[13],eval[14];
cp(-pi/4) eval[12],eval[14];
cp(-pi/8) eval[11],eval[14];
cp(-pi/16) eval[10],eval[14];
h eval[13];
cp(-pi/2) eval[12],eval[13];
cp(-pi/4) eval[11],eval[13];
cp(-pi/8) eval[10],eval[13];
h eval[12];
cp(-pi/2) eval[11],eval[12];
cp(-pi/4) eval[10],eval[12];
h eval[11];
cp(-pi/2) eval[10],eval[11];
h eval[10];
cp(-pi/32) eval[9],eval[14];
cp(-pi/64) eval[8],eval[14];
cp(-pi/128) eval[7],eval[14];
cp(-pi/256) eval[6],eval[14];
cp(-pi/512) eval[5],eval[14];
cp(-pi/1024) eval[4],eval[14];
cp(-pi/2048) eval[3],eval[14];
cp(-pi/4096) eval[2],eval[14];
cp(-pi/8192) eval[1],eval[14];
cp(-pi/16384) eval[0],eval[14];
cp(-pi/16) eval[9],eval[13];
cp(-pi/32) eval[8],eval[13];
cp(-pi/64) eval[7],eval[13];
cp(-pi/128) eval[6],eval[13];
cp(-pi/256) eval[5],eval[13];
cp(-pi/512) eval[4],eval[13];
cp(-pi/1024) eval[3],eval[13];
cp(-pi/2048) eval[2],eval[13];
cp(-pi/4096) eval[1],eval[13];
cp(-pi/8192) eval[0],eval[13];
cp(-pi/8) eval[9],eval[12];
cp(-pi/16) eval[8],eval[12];
cp(-pi/32) eval[7],eval[12];
cp(-pi/64) eval[6],eval[12];
cp(-pi/128) eval[5],eval[12];
cp(-pi/256) eval[4],eval[12];
cp(-pi/512) eval[3],eval[12];
cp(-pi/1024) eval[2],eval[12];
cp(-pi/2048) eval[1],eval[12];
cp(-pi/4096) eval[0],eval[12];
cp(-pi/4) eval[9],eval[11];
cp(-pi/8) eval[8],eval[11];
cp(-pi/16) eval[7],eval[11];
cp(-pi/32) eval[6],eval[11];
cp(-pi/64) eval[5],eval[11];
cp(-pi/128) eval[4],eval[11];
cp(-pi/256) eval[3],eval[11];
cp(-pi/512) eval[2],eval[11];
cp(-pi/1024) eval[1],eval[11];
cp(-pi/2048) eval[0],eval[11];
cp(-pi/2) eval[9],eval[10];
cp(-pi/4) eval[8],eval[10];
cp(-pi/8) eval[7],eval[10];
cp(-pi/16) eval[6],eval[10];
cp(-pi/32) eval[5],eval[10];
cp(-pi/64) eval[4],eval[10];
cp(-pi/128) eval[3],eval[10];
cp(-pi/256) eval[2],eval[10];
cp(-pi/512) eval[1],eval[10];
cp(-pi/1024) eval[0],eval[10];
h eval[9];
cp(-pi/2) eval[8],eval[9];
cp(-pi/4) eval[7],eval[9];
cp(-pi/8) eval[6],eval[9];
cp(-pi/16) eval[5],eval[9];
cp(-pi/32) eval[4],eval[9];
cp(-pi/64) eval[3],eval[9];
cp(-pi/128) eval[2],eval[9];
cp(-pi/256) eval[1],eval[9];
cp(-pi/512) eval[0],eval[9];
h eval[8];
cp(-pi/2) eval[7],eval[8];
cp(-pi/4) eval[6],eval[8];
cp(-pi/8) eval[5],eval[8];
cp(-pi/16) eval[4],eval[8];
cp(-pi/32) eval[3],eval[8];
cp(-pi/64) eval[2],eval[8];
cp(-pi/128) eval[1],eval[8];
cp(-pi/256) eval[0],eval[8];
h eval[7];
cp(-pi/2) eval[6],eval[7];
cp(-pi/4) eval[5],eval[7];
cp(-pi/8) eval[4],eval[7];
cp(-pi/16) eval[3],eval[7];
cp(-pi/32) eval[2],eval[7];
cp(-pi/64) eval[1],eval[7];
cp(-pi/128) eval[0],eval[7];
h eval[6];
cp(-pi/2) eval[5],eval[6];
cp(-pi/4) eval[4],eval[6];
cp(-pi/8) eval[3],eval[6];
cp(-pi/16) eval[2],eval[6];
cp(-pi/32) eval[1],eval[6];
cp(-pi/64) eval[0],eval[6];
h eval[5];
cp(-pi/2) eval[4],eval[5];
cp(-pi/4) eval[3],eval[5];
cp(-pi/8) eval[2],eval[5];
cp(-pi/16) eval[1],eval[5];
cp(-pi/32) eval[0],eval[5];
h eval[4];
cp(-pi/2) eval[3],eval[4];
cp(-pi/4) eval[2],eval[4];
cp(-pi/8) eval[1],eval[4];
cp(-pi/16) eval[0],eval[4];
h eval[3];
cp(-pi/2) eval[2],eval[3];
cp(-pi/4) eval[1],eval[3];
cp(-pi/8) eval[0],eval[3];
h eval[2];
cp(-pi/2) eval[1],eval[2];
cp(-pi/4) eval[0],eval[2];
h eval[1];
cp(-pi/2) eval[0],eval[1];
h eval[0];
barrier eval[0],eval[1],eval[2],eval[3],eval[4],eval[5],eval[6],eval[7],eval[8],eval[9],eval[10],eval[11],eval[12],eval[13],eval[14],q[0];
meas[0] = measure eval[0];
meas[1] = measure eval[1];
meas[2] = measure eval[2];
meas[3] = measure eval[3];
meas[4] = measure eval[4];
meas[5] = measure eval[5];
meas[6] = measure eval[6];
meas[7] = measure eval[7];
meas[8] = measure eval[8];
meas[9] = measure eval[9];
meas[10] = measure eval[10];
meas[11] = measure eval[11];
meas[12] = measure eval[12];
meas[13] = measure eval[13];
meas[14] = measure eval[14];
meas[15] = measure q[0];