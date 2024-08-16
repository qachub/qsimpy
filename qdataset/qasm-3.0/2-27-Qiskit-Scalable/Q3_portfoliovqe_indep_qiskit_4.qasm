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

qubit[4] q;
bit[4] meas;
ry(-5.6930319132895) q[0];
ry(-1.12511205617965) q[1];
cz q[0],q[1];
ry(-2.72654255294887) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(4.71194571298522) q[3];
cz q[0],q[3];
ry(2.27354377291191) q[0];
cz q[1],q[3];
ry(2.48440532049915) q[1];
cz q[0],q[1];
cz q[2],q[3];
ry(4.07487238443428) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(-2.57676238717765) q[3];
cz q[0],q[3];
ry(0.409876317961392) q[0];
cz q[1],q[3];
ry(-2.36624500896937) q[1];
cz q[0],q[1];
cz q[2],q[3];
ry(5.40971082321176) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(4.51874245462199) q[3];
cz q[0],q[3];
ry(-0.421836250244248) q[0];
cz q[1],q[3];
ry(5.67280177101336) q[1];
cz q[2],q[3];
ry(3.15082511644496) q[2];
ry(-2.98464490478688) q[3];
barrier q[0],q[1],q[2],q[3];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];