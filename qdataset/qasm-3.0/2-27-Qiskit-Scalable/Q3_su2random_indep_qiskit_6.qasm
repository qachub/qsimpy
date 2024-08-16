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

qubit[6] q;
bit[6] meas;
u3(1.4368347742816616,-1.8971269718342265,-pi) q[0];
u3(0.13038834331032634,-1.5046299106322625,0) q[1];
cx q[0],q[1];
u3(2.3018560275705338,-2.0790379300152217,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
u3(1.5783117544539513,-2.5865372311326773,-pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
u3(3.1322119352256292,-1.9769425662797726,0) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
u3(1.4124389803026796,-0.2928382424047804,0) q[5];
cx q[0],q[5];
u3(0.02480768898038398,-0.5166404252966217,0) q[0];
cx q[1],q[5];
u3(3.0649864034230183,1.3482194095209188,-pi) q[1];
cx q[0],q[1];
cx q[2],q[5];
u3(1.1773372206208805,0.2673141479915975,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[5];
u3(2.434570523812673,-2.248311899378857,-pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
cx q[4],q[5];
u3(1.748262901313365,-0.7958234754631421,-pi) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
u3(1.8339114230470697,-2.0474788819188667,0) q[5];
cx q[0],q[5];
u3(2.7761197097590844,-1.223818747839898,0) q[0];
cx q[1],q[5];
u3(2.72699034602209,-3.005579583727833,0) q[1];
cx q[0],q[1];
cx q[2],q[5];
u3(2.4016409048004452,2.567616643692406,-pi) q[2];
cx q[0],q[2];
cx q[1],q[2];
cx q[3],q[5];
u3(3.059042641009883,-1.135773149735491,-pi) q[3];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
cx q[4],q[5];
u3(2.1966192898367836,-2.5732197993538017,-pi) q[4];
cx q[0],q[4];
cx q[1],q[4];
cx q[2],q[4];
cx q[3],q[4];
u3(2.5067461861055573,-1.252238475865131,-pi) q[5];
cx q[0],q[5];
u3(0.716184867709297,1.2500242582094412,0) q[0];
cx q[1],q[5];
u3(1.0764269733890999,2.2421565772650203,-pi) q[1];
cx q[2],q[5];
u3(0.29465826494733527,2.2094986973106154,0) q[2];
cx q[3],q[5];
u3(2.348107098834042,1.5999986339275987,-pi) q[3];
cx q[4],q[5];
u3(2.8426000178928454,-1.2820104054356045,-pi) q[4];
u3(1.1354532936221056,2.4123440472691007,-pi) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];