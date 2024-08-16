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

qubit[15] q;
bit[15] meas;
ry(0.000136396817473586) q[0];
ry(-0.0048686757508107) q[1];
ry(pi) q[2];
ry(-0.945999462249306) q[3];
ry(1.68174611059183) q[4];
ry(1.51394559117788) q[5];
ry(1.59565904411302) q[6];
ry(-0.000806368377448579) q[7];
ry(-1.5708714951856) q[8];
ry(-3.14152812250783) q[9];
ry(-1.33793153840854) q[10];
ry(-1.8004141573939) q[11];
ry(-8.46073975980949e-5) q[12];
ry(1.78540133617179) q[13];
ry(0.737372908422509) q[14];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
cx q[10],q[11];
ry(1.57075403802927) q[11];
ry(1.57054538509962) q[12];
ry(-0.313765436352232) q[13];
ry(-0.230597826421151) q[14];
cx q[13],q[14];
cx q[12],q[13];
cx q[11],q[12];
ry(2.91218232108955) q[12];
ry(1.57075219127424) q[13];
ry(-1.91892373542591) q[14];
cx q[9],q[10];
ry(1.57102877354553) q[10];
cx q[10],q[11];
ry(-2.90872188469612) q[11];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(pi) q[0];
ry(-3.28229801922886e-5) q[1];
ry(-0.0155961059250634) q[2];
ry(-1.57117652979853) q[3];
ry(-1.57081894810648) q[4];
ry(-1.57094799484467) q[5];
ry(1.57032261104962) q[6];
ry(1.57095890430424) q[7];
ry(2.33580917768437) q[8];
ry(-0.805812202114571) q[9];
cx q[9],q[10];
ry(1.57029042165379) q[10];
cx q[8],q[9];
cx q[7],q[8];
cx q[6],q[7];
cx q[5],q[6];
cx q[4],q[5];
cx q[3],q[4];
cx q[2],q[3];
cx q[1],q[2];
cx q[0],q[1];
ry(3.34974183010511e-5) q[0];
ry(-3.13658973896523) q[1];
ry(3.12575993069149) q[2];
ry(1.57093750293491) q[3];
ry(-0.624882979860823) q[4];
ry(-3.03066468049326) q[5];
ry(-0.0569364618567087) q[6];
ry(-0.025139170417977) q[7];
ry(-1.56984528039288) q[8];
ry(-3.1414562282013) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14];
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
meas[13] = measure q[13];
meas[14] = measure q[14];