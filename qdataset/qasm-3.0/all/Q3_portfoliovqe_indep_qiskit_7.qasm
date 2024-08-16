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

qubit[7] q;
bit[7] meas;
ry(-1.35142626561641) q[0];
ry(6.09086285472044) q[1];
cz q[0],q[1];
ry(0.985838926200755) q[2];
cz q[0],q[2];
cz q[1],q[2];
ry(4.92779634686599) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
ry(0.73449870851158) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
ry(5.68489891647282) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
ry(-1.85980759882932) q[6];
cz q[0],q[6];
ry(5.76736720206597) q[0];
cz q[1],q[6];
ry(2.26456287365532) q[1];
cz q[0],q[1];
cz q[2],q[6];
ry(1.77926152005553) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[6];
ry(-6.16352639568722) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[6];
ry(4.98648251999252) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[6];
ry(1.38634738701236) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
ry(1.37442316044982) q[6];
cz q[0],q[6];
ry(-5.94883124321488) q[0];
cz q[1],q[6];
ry(6.06435696843617) q[1];
cz q[0],q[1];
cz q[2],q[6];
ry(4.97074662420673) q[2];
cz q[0],q[2];
cz q[1],q[2];
cz q[3],q[6];
ry(6.01490606023683) q[3];
cz q[0],q[3];
cz q[1],q[3];
cz q[2],q[3];
cz q[4],q[6];
ry(-5.47397490882713) q[4];
cz q[0],q[4];
cz q[1],q[4];
cz q[2],q[4];
cz q[3],q[4];
cz q[5],q[6];
ry(6.04513811571536) q[5];
cz q[0],q[5];
cz q[1],q[5];
cz q[2],q[5];
cz q[3],q[5];
cz q[4],q[5];
ry(-5.65957168527518) q[6];
cz q[0],q[6];
ry(-0.213855563838333) q[0];
cz q[1],q[6];
ry(-4.14865916463009) q[1];
cz q[2],q[6];
ry(2.75119149355375) q[2];
cz q[3],q[6];
ry(-2.90746387354294) q[3];
cz q[4],q[6];
ry(3.03971273791445) q[4];
cz q[5],q[6];
ry(5.6154271862704) q[5];
ry(-3.41993145891214) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];
meas[6] = measure q[6];