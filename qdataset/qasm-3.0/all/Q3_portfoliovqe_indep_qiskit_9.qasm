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
ry(4.18956781193055) q[0];
ry(-2.50040003078219) q[1];
cz q[0],q[1];
ry(1.37351555517574) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(6.89845944047017) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(4.33579077085935) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
ry(-2.73939463797793) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
ry(6.75405601006368) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
ry(-1.81532696267707) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
ry(-5.71028251221624) q[8];
cz q[0],q[8];
ry(-3.88968757543485) q[0];
cz q[1],q[8];
ry(2.31858641959471) q[1];
cz q[0],q[1];
cz q[2],q[8];
ry(3.6152611767111) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[8];
ry(-2.2170653399078) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[8];
ry(-5.57629835106055) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[8];
ry(-4.86268271747051) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[8];
ry(0.580170825019928) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
cz q[7],q[8];
ry(0.247469151797455) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
ry(5.22142223919425) q[8];
cz q[0],q[8];
ry(-0.250631632525361) q[0];
cz q[1],q[8];
ry(4.93243961230858) q[1];
cz q[0],q[1];
cz q[2],q[8];
ry(-3.22997844521822) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[8];
ry(3.89444595860614) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[8];
ry(2.16797886653276) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[8];
ry(4.85226119828735) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
cz q[6],q[8];
ry(2.68741508369313) q[6];
cz q[0],q[6];
cz q[1],q[6];
cz q[2],q[6];
cz q[3],q[6];
cz q[4],q[6];
cz q[5],q[6];
cz q[7],q[8];
ry(6.07280620691627) q[7];
cz q[0],q[7];
cz q[1],q[7];
cz q[2],q[7];
cz q[3],q[7];
cz q[4],q[7];
cz q[5],q[7];
cz q[6],q[7];
ry(2.22072841496118) q[8];
cz q[0],q[8];
ry(0.232850347371321) q[0];
cz q[1],q[8];
ry(-0.760132190020268) q[1];
cz q[2],q[8];
ry(-6.05318971796683) q[2];
cz q[3],q[8];
ry(0.715507527842249) q[3];
cz q[4],q[8];
ry(-4.80159468652222) q[4];
cz q[5],q[8];
ry(2.51537274049862) q[5];
cz q[6],q[8];
ry(-5.80638983159612) q[6];
cz q[7],q[8];
ry(1.05450956531343) q[7];
ry(-0.874963876208654) q[8];
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