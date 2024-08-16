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

qubit[3] node;

qubit[1] coin;

qubit[1] anc;
bit[5] meas;
h coin[0];
rccx coin[0],node[1],anc[0];
ccx node[2],anc[0],node[0];
rccx coin[0],node[1],anc[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
x coin[0];
x node[1];
rccx coin[0],node[1],anc[0];
x node[2];
ccx node[2],anc[0],node[0];
rccx coin[0],node[1],anc[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
u2(-pi,-pi) coin[0];
x node[1];
rccx coin[0],node[1],anc[0];
x node[2];
ccx node[2],anc[0],node[0];
rccx coin[0],node[1],anc[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
x coin[0];
x node[1];
rccx coin[0],node[1],anc[0];
x node[2];
ccx node[2],anc[0],node[0];
rccx coin[0],node[1],anc[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
u2(-pi,-pi) coin[0];
x node[1];
rccx coin[0],node[1],anc[0];
x node[2];
ccx node[2],anc[0],node[0];
rccx coin[0],node[1],anc[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
x coin[0];
x node[1];
rccx coin[0],node[1],anc[0];
x node[2];
ccx node[2],anc[0],node[0];
rccx coin[0],node[1],anc[0];
ccx coin[0],node[2],node[1];
cx coin[0],node[2];
x coin[0];
x node[1];
x node[2];
barrier node[0],node[1],node[2],coin[0],anc[0];
meas[0] = measure node[0];
meas[1] = measure node[1];
meas[2] = measure node[2];
meas[3] = measure coin[0];
meas[4] = measure anc[0];