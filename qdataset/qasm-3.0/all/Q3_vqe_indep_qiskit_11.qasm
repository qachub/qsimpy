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

qubit[11] q;
bit[11] meas;
ry(-3.93321867157367e-5) q[0];
ry(3.14153828225148) q[1];
ry(-1.04244698988154) q[2];
ry(-2.6529781684911) q[3];
ry(-3.14153884883199) q[4];
ry(-1.57083009429574) q[5];
ry(8.08182997474777e-6) q[6];
ry(1.33040046687407) q[7];
ry(-1.56990557873177) q[8];
ry(-0.90849852614173) q[9];
ry(1.9322666723919) q[10];
cx q[9],q[10];
ry(-0.550891993740639) q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.56922026145293) q[0];
ry(1.57074762170516) q[1];
ry(-1.57136623420444) q[2];
ry(-1.5702143680604) q[3];
ry(1.5710314383846) q[4];
ry(0.531190078726569) q[5];
ry(-2.61048880395482) q[6];
ry(0.320967135225082) q[7];
ry(pi) q[8];
ry(-1.56980103317781) q[9];
cx q[9],q[10];
ry(1.14503077496292) q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(1.56924617948938) q[0];
ry(1.57075109870182) q[1];
ry(1.57084852620091) q[2];
ry(0.52837040487749) q[3];
ry(1.08219258400081) q[4];
ry(-1.57082538551394) q[5];
ry(-5.30912402451145e-5) q[6];
ry(-1.57076340030464) q[7];
ry(0.855680715181119) q[8];
ry(-1.35617645765508) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10];
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