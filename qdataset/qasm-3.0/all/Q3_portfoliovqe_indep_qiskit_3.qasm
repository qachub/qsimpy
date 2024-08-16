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

qubit[3] q;
bit[3] meas;
ry(6.40668843373193) q[0];
ry(7.5164373992321) q[1];
cz q[0],q[1];
ry(4.25544595579174) q[2];
cz q[0],q[2];
ry(4.68472337652313) q[0];
cz q[1],q[2];
ry(-5.57234388429086) q[1];
cz q[0],q[1];
ry(6.25061895543956) q[2];
cz q[0],q[2];
ry(3.69894705829353) q[0];
cz q[1],q[2];
ry(5.04817012312717) q[1];
cz q[0],q[1];
ry(-4.6879753557813) q[2];
cz q[0],q[2];
ry(-5.4431166727138) q[0];
cz q[1],q[2];
ry(-1.73368723877557) q[1];
ry(-0.708311164662455) q[2];
barrier q[0],q[1],q[2];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];