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
ry(-5.17505624851724) q[0];
ry(5.63797195326646) q[1];
cz q[0],q[1];
ry(2.83167023629021) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(3.15678957441988) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(0.26255724164935) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
ry(-3.63752690265729) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
ry(-5.67935064795409) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
ry(-2.431320039122) q[7];
cz q[0],q[7];
ry(2.43545659980962) q[0];
cz q[1],q[7];
ry(0.256803842447286) q[1];
cz q[0],q[1];
cz q[2],q[7];
ry(-1.60255353888828) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[7];
ry(-0.56705876972131) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[7];
ry(4.68530590741734) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[7];
ry(-5.72236762718819) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[7];
ry(7.20947969610223) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
ry(-1.6144710568676) q[7];
cz q[0],q[7];
ry(0.268865538527815) q[0];
cz q[1],q[7];
ry(2.94905021011405) q[1];
cz q[0],q[1];
cz q[2],q[7];
ry(-0.495848573306769) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[7];
ry(-1.87489873148043) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[7];
ry(4.71358164452947) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[7];
ry(5.52224826477118) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[7];
ry(-2.78094113862254) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
ry(4.92549540517655) q[7];
cz q[0],q[7];
ry(5.17309087700817) q[0];
cz q[1],q[7];
ry(5.45807933290578) q[1];
cz q[2],q[7];
ry(-4.67166074576828) q[2];
cz q[3],q[7];
ry(0.131951970637369) q[3];
cz q[4],q[7];
ry(-5.11207438068884) q[4];
cz q[5],q[7];
ry(-3.31432855904253) q[5];
cz q[6],q[7];
ry(-0.212456131274338) q[6];
ry(4.46922221126423) q[7];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];
meas[6] = measure q[6];
meas[7] = measure q[7];