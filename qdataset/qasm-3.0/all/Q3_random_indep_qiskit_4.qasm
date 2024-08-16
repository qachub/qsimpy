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

qubit[4] q;
bit[4] meas;
u2(pi/2,-0.7167882678555819) q[0];
u1(-1.490342548936602) q[1];
u2(0,0) q[2];
cx q[2],q[1];
ry(-0.4689836211867622) q[1];
ry(-0.4689836211867622) q[2];
cx q[2],q[1];
u2(pi/4,-1.6512501046531909) q[1];
u2(-pi,-pi) q[2];
cx q[2],q[1];
tdg q[1];
u2(4.329343885871547,5.288856933750764) q[3];
cx q[3],q[1];
t q[1];
cx q[2],q[1];
u2(0,3*pi/4) q[1];
u3(pi,-0.3243372398619,0.3243372398619) q[2];
h q[3];
ccx q[0],q[1],q[3];
u2(-pi/2,1.3812349395858394) q[0];
u3(0.0014104532310202874,pi/2,2.677969677273146) q[1];
u3(pi,pi/2,-pi/2) q[3];
cx q[3],q[2];
ry(-0.7103594437025119) q[2];
ry(0.7103594437025119) q[3];
cx q[3],q[2];
u2(-2.0191093047377757,-1.522636840085931) q[2];
u2(-pi,pi/2) q[3];
rzz(2.0971039305177235) q[0],q[3];
rx(-pi/2) q[0];
crx(1.5640163777242566) q[2],q[0];
u1(2.5042812402137704) q[0];
cx q[1],q[0];
ry(-1.0666196369357623) q[0];
ry(-1.0666196369357623) q[1];
cx q[1],q[0];
u1(-2.5042812402137704) q[0];
u2(-pi,-pi) q[1];
u3(pi/4,-pi/2,-pi) q[3];
cx q[2],q[3];
h q[3];
cu1(pi/2) q[2],q[3];
cx q[1],q[2];
cx q[2],q[1];
u1(-1.4624678218563334) q[3];
cu3(3.9824402877397977,0.7203317518888239,1.4645506429344954) q[3],q[0];
barrier q[0],q[1],q[2],q[3];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];
meas[3] = measure q[3];