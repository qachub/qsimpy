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

qubit[3] q;
bit[3] meas;
u3(3.2220464314480877,-0.7167882678555819,0.7167882678555819) q[0];
u2(0,0) q[1];
u1(0.6328290844213722) q[2];
cx q[1],q[2];
ry(2.6026363654825047) q[1];
ry(-2.6026363654825047) q[2];
cx q[1],q[2];
u2(-pi,-pi) q[1];
cu1(pi/2) q[0],q[1];
u1(2.508763569168421) q[2];
cswap q[0],q[1],q[2];
u1(5.864966885210837) q[0];
rzz(5.196847304624584) q[1],q[2];
rzz(5.695888160944528) q[0],q[2];
cu3(3.2536483225524107,2.026167409578137,1.7745821253041683) q[0],q[2];
u3(2.4764232673109765,-1.04448872307207,2.5432022362570406) q[1];
barrier q[0],q[1],q[2];
meas[0] = measure q[0];
meas[1] = measure q[1];
meas[2] = measure q[2];