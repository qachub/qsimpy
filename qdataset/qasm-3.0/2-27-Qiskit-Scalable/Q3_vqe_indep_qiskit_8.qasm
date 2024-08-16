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

qubit[8] q;
bit[8] meas;
ry(-0.000478576634037534) q[0];
ry(2.37479979398369) q[1];
ry(0.000121762887332457) q[2];
ry(-1.57071083524256) q[3];
ry(-1.57066140718803) q[4];
ry(-1.57092368258616) q[5];
ry(-0.504345101267645) q[6];
ry(pi) q[7];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-0.000171858879890788) q[0];
ry(-0.336235453276163) q[1];
ry(2.67428319964476) q[2];
ry(-1.57065827546851) q[3];
ry(1.57080083855567) q[4];
ry(-1.57092335848406) q[5];
ry(1.57089211056806) q[6];
ry(pi) q[7];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(-0.000151671529877075) q[0];
ry(2.31849870955276) q[1];
ry(-0.331048158737342) q[2];
ry(-1.57142154371112) q[3];
ry(-0.000367489910146316) q[4];
ry(-3.1414760495428) q[5];
ry(-pi) q[6];
ry(2.07453332316489) q[7];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];
meas[6] = measure q[6];
meas[7] = measure q[7];