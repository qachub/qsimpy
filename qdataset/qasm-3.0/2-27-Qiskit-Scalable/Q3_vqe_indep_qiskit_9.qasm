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
ry(-pi) q[0];
ry(3.14159190975973) q[1];
ry(1.57059634298966) q[2];
ry(-pi) q[3];
ry(-pi) q[4];
ry(-2.94852550810509e-6) q[5];
ry(-1.53903612667408) q[6];
ry(-1.57016107664093) q[7];
ry(3.09086949903843) q[8];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-1.57032019967469) q[0];
ry(1.57081975760129) q[1];
ry(2.11700540488833) q[2];
ry(-1.02458018258324) q[3];
ry(-1.5707813827888) q[4];
ry(-1.57074622347873) q[5];
ry(0.559078483075728) q[6];
ry(-pi) q[7];
ry(1.57049419492608) q[8];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.57073132717869) q[0];
ry(1.5708287641669) q[1];
ry(-1.57053080227226) q[2];
ry(-2.03076324041607) q[3];
ry(-pi) q[4];
ry(-1.57116183002047) q[5];
ry(-pi) q[6];
ry(3.08153189804193) q[7];
ry(-1.01244200120808) q[8];
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