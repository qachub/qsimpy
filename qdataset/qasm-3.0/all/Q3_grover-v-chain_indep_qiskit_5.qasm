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
gate rccx a,b,c
{
  u2(0,pi) c;
  u3(0,0,pi/4) c;
  cx b, c;
  u3(0,0,-pi/4) c;
  cx a, c;
  u3(0,0,pi/4) c;
  cx b, c;
  u3(0,0,-pi/4) c;
  u2(0,pi) c;
}

// relative-phase 3-controlled X gate

// 3-controlled X gate

// 3-controlled sqrt(X) gate, this equals the C3X gate 
// where the CU1 rotations are -pi/8 not -pi/4

// 4-controlled X gate 

qubit[4] q;

qubit[1] flag;
bit[5] meas;
h q[0];
h q[1];
h q[2];
h q[3];
x flag[0];
cp(pi/8) q[3],flag[0];
cx q[3],q[2];
cp(-pi/8) q[2],flag[0];
cx q[3],q[2];
cp(pi/8) q[2],flag[0];
cx q[2],q[1];
cp(-pi/8) q[1],flag[0];
cx q[3],q[1];
cp(pi/8) q[1],flag[0];
cx q[2],q[1];
cp(-pi/8) q[1],flag[0];
cx q[3],q[1];
cp(pi/8) q[1],flag[0];
cx q[1],q[0];
cp(-pi/8) q[0],flag[0];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[2],q[0];
cp(-pi/8) q[0],flag[0];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[1],q[0];
cp(-pi/8) q[0],flag[0];
u2(0,0) q[1];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[2],q[0];
cp(-pi/8) q[0],flag[0];
u2(0,0) q[2];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
u2(0,0) q[0];
rccx q[0],q[1],flag[0];
u1(-pi) q[3];
ccx q[2],flag[0],q[3];
rccx q[0],q[1],flag[0];
u2(-pi,-pi) q[0];
u2(-pi,-pi) q[1];
u2(-pi,-pi) q[2];
u1(-pi) q[3];
cp(pi/8) q[3],flag[0];
cx q[3],q[2];
cp(-pi/8) q[2],flag[0];
cx q[3],q[2];
cp(pi/8) q[2],flag[0];
cx q[2],q[1];
cp(-pi/8) q[1],flag[0];
cx q[3],q[1];
cp(pi/8) q[1],flag[0];
cx q[2],q[1];
cp(-pi/8) q[1],flag[0];
cx q[3],q[1];
cp(pi/8) q[1],flag[0];
cx q[1],q[0];
cp(-pi/8) q[0],flag[0];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[2],q[0];
cp(-pi/8) q[0],flag[0];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[1],q[0];
cp(-pi/8) q[0],flag[0];
u2(0,0) q[1];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[2],q[0];
cp(-pi/8) q[0],flag[0];
u2(0,0) q[2];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
u2(0,0) q[0];
rccx q[0],q[1],flag[0];
u1(-pi) q[3];
ccx q[2],flag[0],q[3];
rccx q[0],q[1],flag[0];
u2(-pi,-pi) q[0];
u2(-pi,-pi) q[1];
u2(-pi,-pi) q[2];
u1(-pi) q[3];
cp(pi/8) q[3],flag[0];
cx q[3],q[2];
cp(-pi/8) q[2],flag[0];
cx q[3],q[2];
cp(pi/8) q[2],flag[0];
cx q[2],q[1];
cp(-pi/8) q[1],flag[0];
cx q[3],q[1];
cp(pi/8) q[1],flag[0];
cx q[2],q[1];
cp(-pi/8) q[1],flag[0];
cx q[3],q[1];
cp(pi/8) q[1],flag[0];
cx q[1],q[0];
cp(-pi/8) q[0],flag[0];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[2],q[0];
cp(-pi/8) q[0],flag[0];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[1],q[0];
cp(-pi/8) q[0],flag[0];
u2(0,0) q[1];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
cx q[2],q[0];
cp(-pi/8) q[0],flag[0];
u2(0,0) q[2];
cx q[3],q[0];
cp(pi/8) q[0],flag[0];
u2(0,0) q[0];
rccx q[0],q[1],flag[0];
u1(-pi) q[3];
ccx q[2],flag[0],q[3];
rccx q[0],q[1],flag[0];
u2(-pi,-pi) q[0];
u2(-pi,-pi) q[1];
u2(-pi,-pi) q[2];
u1(-pi) q[3];
barrier q[0],q[1],q[2],q[3],flag[0];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure flag[0];