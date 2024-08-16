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
gate cu1 (lambda) a, b{  
  
  u3(0,0,lambda/2) a;
  cx a,b;
  u3(0,0,-lambda/2) b;
  cx a,b;
  u3(0,0,lambda/2) b; 
  
}

// controlled-U
gate cu3(theta,phi,lambda) c, t
{
  // implements controlled-U(theta,phi,lambda) with  target t and control c
  u3(0,0,(lambda+phi)/2) c;
  u3(0,0,(lambda-phi)/2) t;
  cx c,t;
  u3(-theta/2,0,-(phi+lambda)/2) t;
  cx c,t;
  u3(theta/2,phi,0) t;
}

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

qubit[6] q;
bit[6] meas;
u2(pi/4,-pi) q[0];
u2(0,0) q[1];
cx q[2],q[0];
tdg q[0];
tdg q[3];
u1(-1.490342548936602) q[4];
cx q[1],q[4];
ry(-0.4689836211867622) q[1];
ry(-0.4689836211867622) q[4];
cx q[1],q[4];
u2(-pi,-pi) q[1];
u1(1.490342548936602) q[4];
crz(3.6176102152986354) q[3],q[4];
u3(2.0589924944056586,-0.7004749084304418,-2.725030802354361) q[3];
cx q[5],q[0];
t q[0];
cx q[2],q[0];
u2(0,-2.0023389049491893) q[0];
cx q[1],q[2];
cx q[2],q[1];
u2(0,2.952031266380736) q[1];
swap q[2],q[4];
cx q[2],q[1];
h q[1];
cu1(pi/2) q[2],q[1];
h q[2];
u2(0,3*pi/4) q[4];
u2(-pi/2,-pi/2) q[5];
cry(0.9702813337800618) q[0],q[5];
cz q[0],q[1];
u2(5.076820509783505,5.29650934899458) q[0];
cy q[3],q[1];
U(5.235334184033243,2.1426712012556,3.265946359235374) q[3];cx q[5],q[2];
rz(2.1332392738715247) q[2];
cx q[5],q[2];
u2(1.6516969124742982,-pi) q[2];
cx q[4],q[2];
ry(-2.4103587426616264) q[2];
ry(2.4103587426616264) q[4];
cx q[4],q[2];
u1(1.0093350642122303) q[2];
cu3(0.43137627135395684,5.131693955927891,5.540732708314469) q[2],q[0];
cy q[0],q[3];
rx(pi/2) q[2];
cry(0.40662204129964163) q[3],q[0];
u3(3.3401519228349494,-1.4888797250120758,1.4888797250120758) q[0];
u3(1.2926439519212476,-0.012304969156963885,-0.734814199339997) q[3];
u2(-pi,-pi) q[4];
cx q[4],q[1];
cx q[1],q[4];
rz(2.917738905811407) q[1];
rx(pi/2) q[4];
rzz(3.2899582493108444) q[2],q[4];
rx(-pi/2) q[2];
rx(-pi/2) q[4];
cswap q[2],q[1],q[4];
u3(0.12487864535773079,0.8822725062196755,-0.8822725062196755) q[1];
cx q[0],q[1];
s q[0];
t q[1];
u3(1.5699311213649152,2.6845301397458154,-1.3162425160573) q[4];
u3(2.301477786351963,-pi,3*pi/4) q[5];
crx(4.973898923189498) q[2],q[5];
cu1(pi/2) q[2],q[4];
u2(1.4683194020151475,3.4154613287486493) q[2];
u2(0,-pi/2) q[4];
cx q[4],q[0];
cx q[0],q[4];
h q[0];
u3(2.2426295156381317,-pi/2,pi/2) q[5];
cu1(pi/2) q[3],q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];
meas[4] = measure q[4];
meas[5] = measure q[5];