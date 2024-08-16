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
gate rzz(theta) a,b
{
  cx a,b;
  u3(0,0,theta) b;
  cx a,b;
}

// relative-phase CCX

// relative-phase 3-controlled X gate

// 3-controlled X gate

// 3-controlled sqrt(X) gate, this equals the C3X gate 
// where the CU1 rotations are -pi/8 not -pi/4

// 4-controlled X gate 

qubit[13] q;
bit[13] meas;
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
rzz(4.430979888215903) q[3],q[4];
h q[5];
rzz(4.430979888215903) q[1],q[5];
h q[6];
rzz(4.430979888215903) q[5],q[6];
rx(-2.496622800239426) q[5];
h q[7];
rzz(4.430979888215903) q[2],q[7];
h q[8];
rzz(4.430979888215903) q[0],q[8];
rzz(4.430979888215903) q[3],q[8];
rx(-2.496622800239426) q[3];
rx(-2.496622800239426) q[8];
h q[9];
rzz(4.430979888215903) q[1],q[9];
rx(-2.496622800239426) q[1];
rzz(2.496856249479389) q[1],q[5];
rzz(4.430979888215903) q[7],q[9];
rx(-2.496622800239426) q[7];
rx(-2.496622800239426) q[9];
rzz(2.496856249479389) q[1],q[9];
rx(1.8520806794124602) q[1];
h q[10];
rzz(4.430979888215903) q[6],q[10];
rx(-2.496622800239426) q[6];
rzz(2.496856249479389) q[5],q[6];
rx(1.8520806794124602) q[5];
h q[11];
rzz(4.430979888215903) q[4],q[11];
rzz(4.430979888215903) q[10],q[11];
rx(-2.496622800239426) q[10];
rx(-2.496622800239426) q[11];
rx(-2.496622800239426) q[4];
rzz(2.496856249479389) q[3],q[4];
rzz(2.496856249479389) q[4],q[11];
rx(1.8520806794124602) q[4];
rzz(2.496856249479389) q[6],q[10];
rzz(2.496856249479389) q[10],q[11];
rx(1.8520806794124602) q[10];
rx(1.8520806794124602) q[11];
rx(1.8520806794124602) q[6];
h q[12];
rzz(4.430979888215903) q[0],q[12];
rx(-2.496622800239426) q[0];
rzz(2.496856249479389) q[0],q[8];
rzz(4.430979888215903) q[2],q[12];
rx(-2.496622800239426) q[12];
rzz(2.496856249479389) q[0],q[12];
rx(1.8520806794124602) q[0];
rx(-2.496622800239426) q[2];
rzz(2.496856249479389) q[2],q[7];
rzz(2.496856249479389) q[2],q[12];
rx(1.8520806794124602) q[12];
rx(1.8520806794124602) q[2];
rzz(2.496856249479389) q[3],q[8];
rx(1.8520806794124602) q[3];
rzz(2.496856249479389) q[7],q[9];
rx(1.8520806794124602) q[7];
rx(1.8520806794124602) q[8];
rx(1.8520806794124602) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12];
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