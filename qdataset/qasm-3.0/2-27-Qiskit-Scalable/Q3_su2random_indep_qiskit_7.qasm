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
u3(1.4368347742816614,1.6369627429575306,-pi) q[0];
u3(0.13038834331032634,1.0625547235745714,0) q[1];
cx q[0],q[1];
u3(2.301856027570534,-2.5865372311326773,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
u3(1.5783117544539513,1.1646500873100205,-pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
u3(3.1322119352256292,-0.2928382424047804,0) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
u3(1.4124389803026796,0.02480768898038388,0) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
u3(1.2444656817555668,-3.064986403423018,0) q[6];
cx q[0],q[6];
u3(1.1773372206208805,-2.248311899378857,-pi) q[0];
cx q[1],q[6];
u3(2.434570523812673,-0.7958234754631421,-pi) q[1];
cx q[0],q[1];
cx q[2],q[6];
u3(1.748262901313365,1.0941137716709264,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[6];
u3(1.8339114230470699,2.776119709759085,0) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
cx q[4],q[6];
u3(0.5166404252966228,-0.4146023075677032,-pi) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
cx q[5],q[6];
u3(1.7933732440688746,0.7399517487893483,-pi) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
u3(2.8742785055981956,0.0825500125799099,-pi) q[6];
cx q[0],q[6];
u3(2.1966192898367836,-1.2522384758651306,-pi) q[0];
cx q[1],q[6];
u3(2.5067461861055573,-2.4254077858804965,-pi) q[1];
cx q[0],q[1];
cx q[2],q[6];
u3(1.223818747839898,2.0651656802006935,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[6];
u3(3.005579583727834,-2.846934388642458,-pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
cx q[4],q[6];
u3(0.5739760098973872,0.7934855547557511,-pi) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
cx q[5],q[6];
u3(2.0058195038543025,-2.8426000178928454,0) q[5];
cx q[0],q[5];
cx q[1],q[5];
cx q[2],q[5];
cx q[3],q[5];
cx q[4],q[5];
u3(0.5683728542359917,-1.1354532936221062,0) q[6];
cx q[0],q[6];
u3(1.2500242582094414,1.0368254640000032,0) q[0];
cx q[1],q[6];
u3(0.8994360763247731,-0.6752586753862846,-pi) q[1];
cx q[2],q[6];
u3(2.2094986973106154,0.5872288522304125,0) q[2];
cx q[3],q[6];
u3(1.541594019662195,2.0175663513732243,-pi) q[3];
cx q[4],q[6];
u3(1.8595822481541888,0.9497161489686778,0) q[4];
cx q[5],q[6];
u3(0.7292486063206927,-0.7281303932915781,-pi) q[5];
u3(2.045249940143549,-0.3502202738938198,0) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];
meas[6] = measure q[6];