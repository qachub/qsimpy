// Generated from qBraid v0.7.1
OPENQASM 3.0;
include 'stdgates.inc';
// Generated from qiskit v0.24.0 file qiskit/qasm/libs/qelib1.inc

// QASM 3 equivalent definitions of qelib1.inc gates

// idle gate (identity) with length gamma*sqglen
 
// generic single qubit gate

// inverse sqrt(X)
gate sxdg a { s a; h a; s a; }

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

qubit[25] q;
bit[25] meas;
h q[0];
sx q[1];
u2(2.154916695404787,-pi/2) q[4];
cx q[7],q[0];
h q[0];
cu1(pi/2) q[7],q[0];
u3(1.1246196161724402,-1.5011636833634245,-2.6979882854166677) q[7];
s q[8];
cx q[8],q[1];
u2(0,0) q[1];
x q[8];
u2(-2.648645396816742,2.244757944239332) q[9];
u1(-2.8545599186475066) q[10];
u2(0,-pi/4) q[11];
cx q[11],q[4];
ry(-2.5384102548917524) q[11];
ry(-2.5384102548917524) q[4];
cx q[11],q[4];
u2(-pi,-pi) q[11];
u1(-0.5841203686098897) q[4];
u2(pi/4,-pi) q[12];
u2(0,0) q[13];
u3(0.8755706304852968,-pi/2,pi/2) q[14];
rx(0.9110285368422897) q[15];
cy q[15],q[0];
h q[0];
h q[16];
cx q[2],q[16];
h q[16];
cu1(pi/2) q[2],q[16];
u1(-0.07118424815403301) q[16];
cx q[1],q[16];
ry(-1.4352092926232847) q[1];
ry(-1.4352092926232847) q[16];
cx q[1],q[16];
u3(0.9104935142614169,1.1306137506994656,1.7177427737789888) q[1];
ccx q[0],q[7],q[1];
U(0.6800359947158534,0.89201632818762,2.302726440535615) q[0];u2(0,-3.070408405435761) q[16];
h q[2];
cx q[17],q[12];
tdg q[12];
cx q[18],q[3];
crx(5.131693955927891) q[18],q[3];
s q[3];
cswap q[9],q[4],q[18];
u2(0,0) q[18];
h q[4];
h q[9];
cx q[19],q[12];
t q[12];
cx q[17],q[12];
u2(0,3*pi/4) q[12];
cx q[19],q[12];
cx q[12],q[19];
u2(-pi,-pi) q[12];
rzz(5.251950453320392) q[19],q[11];
p(5.715059878449614) q[11];
u1(0.16462968369296951) q[19];
swap q[1],q[19];
p(0.8826812454603556) q[1];
crx(1.6643787200110323) q[19],q[0];
cry(4.684618627355123) q[6],q[20];
ch q[20],q[8];
sx q[20];
cx q[3],q[20];
cu3(5.937976762063549,3.2440404314539117,1.7604762279470343) q[11],q[20];
p(1.3747010518474199) q[11];
u3(pi,1.1325484591440826,-1.1325484591440826) q[3];
cx q[18],q[3];
ry(2.7339709559565355) q[18];
ry(-2.7339709559565355) q[3];
cx q[18],q[3];
u2(-pi,-pi) q[18];
u1(0.8764957353016278) q[3];
cx q[8],q[14];
h q[14];
cu1(pi/2) q[8],q[14];
cu1(pi/2) q[14],q[4];
u3(2.2323051882328104,1.9728021783265781,1.0711039783726912) q[14];
cu1(pi/8) q[7],q[4];
cx q[7],q[20];
cu1(-pi/8) q[20],q[4];
cx q[7],q[20];
cu1(pi/8) q[20],q[4];
cx q[20],q[18];
cu1(-pi/8) q[18],q[4];
cx q[7],q[18];
cu1(pi/8) q[18],q[4];
cx q[20],q[18];
cu1(-pi/8) q[18],q[4];
cx q[7],q[18];
cu1(pi/8) q[18],q[4];
u3(2.5799628761565807,2.933811347791454,-0.5705500671846746) q[18];
h q[4];
u2(-pi,0) q[8];
rx(pi/2) q[21];
rx(pi/2) q[22];
rzz(1.4207188874050238) q[22],q[21];
u2(2.782679406792621,-pi/2) q[21];
cu3(2.1426712012556,3.265946359235374,3.450765893010145) q[21],q[17];
crx(0.12487864535773079) q[10],q[21];
s q[17];
rx(-pi/2) q[22];
cx q[22],q[2];
h q[2];
cu1(pi/2) q[22],q[2];
u3(0.6591056192846527,1.4068267006606376,-2.8240266193906916) q[2];
cx q[22],q[16];
h q[16];
cu1(pi/2) q[22],q[16];
cx q[22],q[12];
h q[12];
cu1(pi/2) q[22],q[12];
u1(2.978892789607242) q[12];
cx q[3],q[22];
cx q[22],q[3];
u2(pi/2,-pi/2) q[3];
cry(5.864966885210837) q[23],q[5];
u3(0.14594949773143112,-0.2507356896152375,1.9796137030378569) q[23];
swap q[21],q[23];
u2(0,0) q[23];
u3(2.0021725981488534,-pi/2,pi/2) q[5];
cx q[17],q[5];
x q[17];
rzz(5.442492121247214) q[10],q[17];
u2(0,0) q[10];
u3(2.6989368474871824,-pi,0.7191456665618823) q[17];
cu1(pi/2) q[17],q[3];
cx q[17],q[2];
u2(0,3*pi/4) q[2];
ccx q[4],q[22],q[10];
u2(-pi/4,-pi) q[10];
cz q[4],q[12];
rx(pi/2) q[12];
cx q[4],q[2];
u1(pi/4) q[2];
u2(pi/4,-pi) q[5];
u1(0.48445832423989366) q[24];
cx q[13],q[24];
ry(-2.3665676041036434) q[13];
ry(-2.3665676041036434) q[24];
cx q[13],q[24];
u2(-pi,-pi) q[13];
cx q[13],q[6];
u3(pi,-2.8993634914698463,2.8993634914698463) q[24];
cx q[6],q[13];
ccx q[15],q[24],q[13];
cx q[15],q[9];
cx q[24],q[5];
tdg q[5];
cx q[16],q[5];
t q[16];
t q[5];
cx q[24],q[5];
u1(-3.1205772510127634) q[24];
cx q[23],q[24];
ry(-2.1023312964585767) q[23];
ry(-2.1023312964585767) q[24];
cx q[23],q[24];
u3(pi,-3*pi/4,pi/4) q[23];
u2(pi/4,3.1205772510127634) q[24];
u2(0,pi/4) q[5];
u2(0,-pi/2) q[6];
cx q[13],q[6];
h q[6];
cu1(pi/2) q[13],q[6];
U(4.213907225096717,2.683738114930269,2.2958382109065414) q[13];cu3(3.960535232926928,0.9377220734486331,4.36209501550468) q[1],q[13];
cry(1.7429645829728897) q[1],q[13];

// rxx gate
h q[13];
h q[3];
cx q[13],q[3];
rz(3.140335425578599) q[3];
cx q[13],q[3];
h q[3];
h q[13];

p(2.217818252597039) q[13];
h q[3];
u3(2.8186963582034528,pi/2,-pi/2) q[6];
crz(2.077793364252715) q[7],q[6];
rzz(0.986536898300482) q[6],q[22];
cx q[6],q[2];
u1(-pi/4) q[2];
cx q[4],q[2];
u1(pi/4) q[2];
cx q[6],q[2];
cu3(5.057412206538706,0.07916722670120846,3.943984945955521) q[13],q[6];
u2(pi/4,3*pi/4) q[2];
cx q[17],q[2];
u2(pi/4,3*pi/4) q[2];
u1(-2.490541597386427) q[7];
cu3(1.710772327098755,3.837965389755499,0.2643182647519992) q[7],q[1];
cx q[17],q[1];
cswap q[8],q[20],q[16];
sxdg q[16];
u1(-1.7666403564030182) q[20];
cx q[23],q[20];
ry(-1.9285871651549513) q[20];
ry(1.9285871651549513) q[23];
cx q[23],q[20];
u2(-pi/2,-2.9457486239816717) q[20];
u2(-pi,-pi) q[23];
cx q[8],q[24];
tdg q[24];
cx q[19],q[24];
rx(pi/2) q[19];
rzz(5.696548335665689) q[20],q[19];
rx(-pi/2) q[19];
cu1(pi/2) q[19],q[3];
u2(0.6869119622693339,1.8711205015238437) q[19];
rx(-pi/2) q[20];
t q[24];
h q[3];
cx q[8],q[24];
u2(0,3*pi/4) q[24];
cy q[10],q[24];
u2(0,0) q[10];
u2(0,0) q[24];
u2(pi/2,0) q[8];
rz(3.07331687927355) q[9];
cx q[15],q[9];
crx(1.9778249211971906) q[15],q[21];
ry(0.45529085355760135) q[21];
cry(5.590233885125366) q[5],q[15];
cz q[21],q[15];
crx(4.785691458225109) q[15],q[23];
cry(0.21420527290543262) q[16],q[21];
u3(1.98508982419815,-pi,0) q[16];
cx q[21],q[18];
tdg q[18];
cx q[20],q[18];
t q[18];
u1(1.6757910373386924) q[20];
cx q[21],q[18];
u2(0,3*pi/4) q[18];
cx q[21],q[16];
rz(3.568967231508171) q[16];
cx q[21],q[16];
u3(pi,pi/2,-pi/2) q[16];
U(3.4640197984503227,3.1558137226343828,1.2418576747663082) q[21];u1(0.5381388589896465) q[23];
cx q[10],q[23];
ry(-0.7023205224744359) q[10];
ry(-0.7023205224744359) q[23];
cx q[10],q[23];
u3(1.6687286692318366,-2.113942871943067,-1.8236053421022482) q[10];
cx q[16],q[10];
ry(-0.18841663182962137) q[10];
ry(-0.18841663182962137) q[16];
cx q[16],q[10];
u3(0.4053321386192356,-0.961905099172828,-3.1223598825572347) q[10];
u2(-pi,-pi) q[16];
cy q[16],q[21];
u2(0,-pi/2) q[21];
u1(-0.5381388589896474) q[23];
crx(0.6246238923704159) q[23],q[6];
cswap q[4],q[15],q[14];
u3(0.5277784822910401,-0.7342167166774636,-1.7254727681784052) q[14];
rx(5.468967898137674) q[4];
h q[5];
cx q[0],q[5];
h q[5];
cu1(pi/2) q[0],q[5];
cu1(pi/2) q[22],q[0];
u1(-2.0778699467341006) q[0];
u3(2.9855163928043065,2.645251670501965,-2.645251670501965) q[22];
cry(5.6946507737984255) q[22],q[13];
sx q[13];
s q[22];
cx q[24],q[0];
ry(-2.8659960945246308) q[0];
ry(-2.8659960945246308) q[24];
cx q[24],q[0];
u1(2.0778699467341006) q[0];

// rxx gate
h q[18];
h q[0];
cx q[18],q[0];
rz(2.3749623468387755) q[0];
cx q[18],q[0];
h q[0];
h q[18];

x q[18];
u2(-pi,-pi) q[24];
ch q[3],q[24];
u1(-0.19786542111326488) q[3];
u2(pi/4,pi/2) q[5];
z q[6];
cx q[7],q[5];
tdg q[5];
h q[9];
cu3(6.152788626135732,3.1427137215673775,2.8555104872525194) q[11],q[9];
u3(0.6622644778760851,0,2.1662457533294077) q[11];
cy q[17],q[11];
u2(0,0) q[11];
cx q[11],q[3];
ry(0.2467244561596445) q[11];
crx(1.7881886968006497) q[17],q[24];
rx(2.568763326600303) q[17];
u2(pi/2,pi/2) q[24];
ry(-0.2467244561596445) q[3];
cx q[11],q[3];
u2(-pi/2,-pi/2) q[11];
cx q[21],q[11];
cx q[11],q[21];
u3(1.6005185298923386,-0.011601933907114947,2.3973227458498743) q[11];
u1(0.19786542111326488) q[3];
rzz(6.181543494428037) q[22],q[3];
sxdg q[22];
u3(1.5133556498456284,1.2665214697680423,-2.0912131428906324) q[9];
rzz(3.2081105761806192) q[12],q[9];
rx(-pi/2) q[12];
cx q[12],q[5];
h q[12];
cu1(pi/8) q[15],q[12];
cx q[15],q[1];
cu1(-pi/8) q[1],q[12];
cx q[15],q[1];
cu1(pi/8) q[1],q[12];
cx q[1],q[2];
cu1(-pi/8) q[2],q[12];
cx q[15],q[2];
cu1(pi/8) q[2],q[12];
cx q[1],q[2];

// rxx gate
h q[19];
h q[1];
cx q[19],q[1];
rz(2.7159035835104843) q[1];
cx q[19],q[1];
h q[1];
h q[19];

swap q[1],q[18];
cu1(-pi/8) q[2],q[12];
cx q[15],q[2];
cry(3.5366380300165026) q[15],q[4];
cu1(pi/8) q[2],q[12];
h q[12];
u2(0,-pi/2) q[2];
cx q[2],q[20];
cx q[20],q[2];
u3(0.8883628577147771,2.065270073156862,-1.1790714971011655) q[2];
h q[20];
cu1(6.147568395062868) q[20],q[6];
h q[20];
cx q[16],q[20];
h q[20];
cu1(pi/2) q[16],q[20];
u2(pi/4,-pi) q[16];
s q[4];
swap q[4],q[18];
t q[5];
cx q[7],q[5];
u2(pi/2,-pi/4) q[5];
ch q[14],q[5];
cswap q[14],q[3],q[1];
h q[1];
cu1(pi/2) q[14],q[1];
u3(pi,pi/2,-pi/2) q[1];
swap q[5],q[10];
h q[10];
cp(5.9191545824792) q[18],q[5];
cx q[4],q[10];
h q[10];
cu1(pi/2) q[4],q[10];
cry(2.5372522827756945) q[10],q[11];
h q[11];
rx(5.932278273454754) q[4];
s q[5];
U(4.7046749871144575,3.007679600008536,5.191259782901502) q[7];ccx q[23],q[7],q[12];
cu3(3.418449485802684,1.4073080668162754,0.28133025188542254) q[15],q[7];
cu1(5.720342519357437) q[19],q[23];
cx q[17],q[19];
cx q[19],q[17];
u1(0.6479962281786134) q[17];
h q[23];
ch q[3],q[19];
s q[3];
cx q[6],q[23];
rz(1.4967420150074497) q[23];
cx q[6],q[23];
h q[23];
swap q[22],q[23];
u1(-2.283004046165651) q[23];
cx q[1],q[23];
ry(-2.8954796269228) q[1];
ry(-2.8954796269228) q[23];
cx q[1],q[23];
u2(0,0) q[1];
u2(0,-0.8585886074241413) q[23];
u3(2.651979878870759,-pi,pi/2) q[9];
cx q[9],q[8];
cx q[8],q[9];
u1(pi/2) q[8];
h q[9];
cx q[0],q[9];
h q[9];
cu1(pi/2) q[0],q[9];
swap q[0],q[12];
ccx q[0],q[8],q[7];
crz(6.20620670999013) q[13],q[9];
ccx q[12],q[13],q[2];
u3(0.06192113734452136,-pi/2,pi/2) q[12];
h q[2];
cy q[20],q[13];
rx(1.6817105013662645) q[13];
cu3(6.249028613334083,0.9584889129261758,1.9180259133293323) q[6],q[0];
tdg q[0];
ch q[4],q[0];
h q[6];
cx q[7],q[16];
u2(0,3*pi/4) q[16];
cx q[21],q[16];
u1(pi/4) q[16];
cx q[24],q[16];
u1(-pi/4) q[16];
cx q[21],q[16];
u1(pi/4) q[16];
u2(pi/4,-pi) q[21];
cx q[24],q[16];
u2(pi/4,3*pi/4) q[16];
u1(-2.404227248607866) q[24];
cx q[7],q[16];
u2(0,3*pi/4) q[16];
ch q[16],q[18];
cp(1.1023225123443525) q[3],q[18];
sx q[18];
cu1(pi/2) q[4],q[3];
u2(0,-pi) q[3];
cx q[7],q[21];
tdg q[21];
cx q[22],q[21];
t q[21];
u3(1.7796098086433612,-1.2709704581994186,3.1043500060245073) q[22];
cx q[7],q[21];
cy q[13],q[7];
u2(0,3*pi/4) q[21];
rz(3.2063150947089687) q[8];
cswap q[14],q[8],q[20];
ccx q[20],q[21],q[23];
crz(4.908176967222506) q[20],q[24];
x q[21];
cry(0.08215959307910102) q[21],q[18];
h q[23];
u2(0,0) q[24];
cu1(3.9584197013049276) q[6],q[14];
cu1(1.9304185457267804) q[23],q[6];
x q[6];
ccx q[8],q[12],q[11];
h q[11];
cp(0.034810388035532526) q[0],q[11];
u1(-0.18113684475687464) q[11];
swap q[13],q[12];
u2(0,0) q[12];
cx q[12],q[22];
ry(1.5207609562205189) q[12];
ry(-1.5207609562205189) q[22];
cx q[12],q[22];
u3(pi,-0.639985212896022,1.7162092772963238) q[12];
u1(-1.9250126749020424) q[22];
cu1(pi/2) q[22],q[21];
cx q[24],q[11];
ry(-2.456728201198442) q[11];
ry(-2.456728201198442) q[24];
cx q[24],q[11];
u1(0.18113684475687553) q[11];
u2(2.7087780864324156,-pi) q[24];
h q[8];
cy q[9],q[15];
u2(0,-pi) q[15];
cx q[15],q[5];
cx q[5],q[15];
rzz(2.4268652964535304) q[15],q[10];
cswap q[15],q[7],q[10];
p(0.5289241697664371) q[10];
u1(-pi) q[15];
u2(2.246204785170522,pi/2) q[5];
cu1(0.12574600318265342) q[7],q[5];
u2(-pi/2,-pi) q[5];
h q[7];
cx q[6],q[7];
h q[7];
cu1(pi/2) q[6],q[7];
u2(0,-2.9789270952052576) q[7];
cu3(2.9926386069391535,4.710799812684255,3.8836619626435622) q[9],q[2];
crx(1.1644106661208136) q[2],q[19];
cu3(2.4526125033277437,3.8591279282259388,1.173219411973466) q[17],q[19];
sdg q[19];
rzz(3.002885632800635) q[19],q[13];
u1(3.4579903763189113) q[19];
cu1(4.172100840595829) q[2],q[16];
cz q[16],q[17];
rzz(5.469947402739597) q[16],q[23];
crz(0.4413226390369919) q[2],q[1];
u2(pi/4,-pi) q[1];
cx q[20],q[1];
u2(0,3*pi/4) q[1];
cx q[2],q[1];
u1(pi/4) q[1];
cx q[17],q[1];
u1(-pi/4) q[1];
cx q[2],q[1];
u1(pi/4) q[1];
cx q[17],q[1];
u2(pi/4,3*pi/4) q[1];
h q[17];
ccx q[18],q[16],q[17];
cu1(pi/2) q[16],q[22];
u2(0,-0.3341689434924384) q[16];
u2(pi/2,-pi) q[17];
u2(1.5282482969415936,-1.6887770326094416) q[2];
cx q[20],q[1];
u3(pi/4,-pi/2,pi/4) q[1];
ccx q[19],q[18],q[1];
h q[1];
sdg q[18];
cx q[22],q[7];
h q[7];
cu1(pi/2) q[22],q[7];
u1(-2.11657969120874) q[7];
u3(pi,2.157637684231484,-2.157637684231484) q[9];
ccx q[14],q[9],q[8];
ccx q[0],q[9],q[3];
cu3(0.5139819104794644,0.22818231596551253,6.254474076869609) q[10],q[14];
cx q[10],q[11];
u2(0,0) q[11];
cx q[11],q[24];
ry(-1.4428941675132734) q[11];
ry(-1.4428941675132734) q[24];
cx q[11],q[24];
u2(-pi,-pi) q[11];
u1(-0.0716749849452949) q[24];
h q[3];
ch q[3],q[0];
cx q[21],q[0];
cx q[0],q[21];
u2(0,-3*pi/4) q[21];
h q[8];
cp(0.1075074462015614) q[8],q[4];
h q[4];
cx q[14],q[4];
h q[4];
cu1(pi/2) q[14],q[4];
u1(-1.0351876655429262) q[4];
h q[8];
cu1(pi/2) q[13],q[8];
h q[8];
crx(5.391308799294131) q[10],q[8];
h q[10];
cx q[8],q[19];
h q[19];
u2(0,-pi/2) q[8];
cx q[9],q[12];
u2(0,3*pi/4) q[12];
cx q[20],q[12];
u1(pi/4) q[12];
cx q[23],q[12];
u1(-pi/4) q[12];
cx q[20],q[12];
u1(pi/4) q[12];
crx(0.8033211143178615) q[14],q[20];
cswap q[2],q[14],q[1];

// rxx gate
h q[1];
h q[24];
cx q[1],q[24];
rz(5.268488684001932) q[24];
cx q[1],q[24];
h q[24];
h q[1];

u3(0.8566134712237106,-pi,-pi) q[14];
u2(pi/4,-pi) q[20];
cx q[23],q[12];
u2(pi/4,3*pi/4) q[12];
cu1(pi/8) q[23],q[5];
cx q[23],q[13];
cu1(-pi/8) q[13],q[5];
cx q[23],q[13];
cu1(pi/8) q[13],q[5];
cx q[13],q[6];
cu1(-pi/8) q[6],q[5];
cx q[23],q[6];
cu1(pi/8) q[6],q[5];
cx q[13],q[6];
cx q[13],q[20];
u2(0,3*pi/4) q[20];
cu1(-pi/8) q[6],q[5];
cx q[23],q[6];
u3(1.753528299180747,1.3671211678980084,1.2854623685399158) q[23];
cu1(pi/8) q[6],q[5];
h q[5];
cx q[5],q[20];
u1(pi/4) q[20];

// rxx gate
h q[6];
h q[15];
cx q[6],q[15];
rz(4.195933186331391) q[15];
cx q[6],q[15];
h q[15];
h q[6];

cp(3.3267340383086825) q[15],q[22];
u2(-pi,-pi) q[15];
u3(1.0730987472621394,-1.150193277365655,0) q[22];
cx q[6],q[16];
h q[16];
cu1(pi/2) q[6],q[16];
u3(pi,-pi/2,pi/2) q[6];
cx q[9],q[12];
u2(-pi/2,pi/4) q[12];
cx q[12],q[17];
cx q[17],q[12];
ccx q[0],q[12],q[10];
u2(0,-pi) q[10];
cx q[12],q[19];
h q[17];
cx q[17],q[20];
cu1(pi/2) q[18],q[10];
u3(1.8620916688054214,0.202016030835253,1.8075783615181864) q[10];
u3(2.651985226786603,1.020032422524432,-2.2149437198606035) q[18];
h q[19];
cu1(pi/2) q[12],q[19];
crz(1.4997239098323116) q[2],q[0];
u2(-pi,-pi/2) q[2];
u1(-pi/4) q[20];
crx(5.847070211188854) q[24],q[19];
cx q[5],q[20];
u1(pi/4) q[20];
cx q[17],q[20];
s q[17];
u2(pi/4,3*pi/4) q[20];
cx q[13],q[20];
u3(2.662327016443171,pi/2,-1.9077768553935153) q[13];
u3(1.7291244011482256,1.6518456205351093,2.122023537230996) q[20];
cx q[8],q[17];
cx q[17],q[8];
ccx q[1],q[8],q[12];
u1(-2.2223478255799183) q[1];
cx q[14],q[12];
u1(-1.4949918448409338) q[14];
h q[17];
cx q[16],q[17];
cx q[17],q[16];
u3(2.390340892972722,-pi,-pi) q[16];
u2(pi/4,-pi) q[17];
cx q[24],q[17];
tdg q[17];
ccx q[6],q[12],q[10];
h q[10];
h q[12];
ry(5.216689394072952) q[6];
s q[8];
cx q[2],q[8];
cx q[8],q[2];
h q[8];
cry(3.9616394619393716) q[9],q[3];
cx q[4],q[3];
cx q[3],q[4];
cx q[3],q[21];
h q[21];
cu1(pi/2) q[3],q[21];
u2(-pi/2,pi/2) q[21];
s q[3];
cx q[3],q[21];
crz(5.895731816072159) q[19],q[21];
u2(0,0) q[21];
cx q[21],q[14];
ry(-0.5521399908617415) q[14];
ry(-0.5521399908617415) q[21];
cx q[21],q[14];
u1(1.4949918448409338) q[14];
cu1(pi/2) q[14],q[12];
u2(-pi/4,-pi) q[12];
u1(1.949698453962342) q[14];
u3(2.6081108866879137,1.311888371320423,-0.22421471097696832) q[21];
x q[3];
cx q[3],q[17];
t q[17];
cx q[24],q[17];
u3(2.2687159205467418,-2.699183779588229,-2.012260947115448) q[17];
cp(1.8867786262362098) q[3],q[24];
u2(0,0) q[4];
cx q[4],q[7];
ry(-1.0752121003091382) q[4];
ry(-1.0752121003091382) q[7];
cx q[4],q[7];
u2(-pi,-pi) q[4];
u1(2.11657969120874) q[7];
cx q[4],q[7];
cx q[4],q[23];
cx q[23],q[4];
cy q[19],q[4];
u1(0.35953179972295324) q[19];
tdg q[7];
cx q[7],q[18];
u2(0,3*pi/4) q[18];
cx q[2],q[18];
u1(pi/4) q[18];
cx q[23],q[18];
u1(-pi/4) q[18];
cx q[2],q[18];
u1(pi/4) q[18];
sdg q[2];
cx q[23],q[18];
u2(pi/4,3*pi/4) q[18];
ry(3.0240407971497394) q[23];
cx q[7],q[18];
u3(0.2553663261940257,-0.7462130498713915,-2.9889200701379144) q[18];
cx q[18],q[21];
h q[21];
cu1(pi/2) q[18],q[21];
u1(-2.8157006924244214) q[21];
rzz(3.6593834337403552) q[9],q[11];
u3(pi,-0.47392701498265044,0.47392701498265044) q[11];
cp(4.833817480742647) q[5],q[9];
swap q[0],q[5];
u2(0,0) q[0];
cx q[0],q[1];
ry(-1.7859039567181418) q[0];
ry(-1.7859039567181418) q[1];
cx q[0],q[1];
u2(-pi,-pi) q[0];
u1(2.2223478255799183) q[1];
cy q[5],q[20];
rzz(1.9760341414479943) q[0],q[5];
tdg q[20];
crx(0.4953372067845129) q[20],q[4];
cp(1.842124404625964) q[24],q[0];
h q[0];
cu1(pi/2) q[23],q[0];
h q[0];
crz(1.1645061371573724) q[24],q[2];
rx(pi/2) q[2];
rzz(1.5968789856659877) q[4],q[2];
rx(-pi/2) q[2];
rx(-pi/2) q[4];
s q[9];
cx q[13],q[9];
cx q[9],q[13];
cu3(0.2036095596160477,0.6059501029819266,4.404829227677525) q[22],q[13];
ccx q[1],q[13],q[15];
cp(1.7798622900765144) q[10],q[1];
cu1(pi/2) q[1],q[19];
sxdg q[1];
u1(1.6795871363697765) q[10];
h q[15];
crz(5.111304365132587) q[16],q[13];
u3(pi,-2.935543853554854,2.9355438535548544) q[13];
u3(1.5581826822953195,0.8864981003436903,-0.8864981003436903) q[19];
cu3(6.1890166146456504,6.077230478817806,4.511161369168738) q[19],q[1];
u1(-pi/2) q[1];
u2(0,0) q[19];
ccx q[3],q[5],q[15];
u3(2.375127556967226,1.1933889652496052,2.8079876663713828) q[15];
u2(4.98365199249263,3.1704170868245622) q[3];
cx q[5],q[17];
u2(0,3*pi/4) q[17];
cx q[6],q[17];
u1(pi/4) q[17];
ch q[8],q[22];
cz q[22],q[7];
cry(5.087234727217703) q[16],q[22];
cry(0.9131427033950202) q[16],q[0];
u2(0,0) q[22];
cx q[22],q[13];
ry(-1.7997604179853164) q[13];
ry(-1.7997604179853164) q[22];
cx q[22],q[13];
u1(2.729495053519914) q[13];
u2(-pi,-pi) q[22];
u2(0,0) q[7];
cx q[7],q[14];
ry(-2.9338794130807613) q[14];
ry(2.9338794130807613) q[7];
cx q[7],q[14];
u1(-1.9496984539623412) q[14];
u2(-pi,-pi) q[7];
cp(2.655054616728902) q[24],q[7];
cx q[12],q[7];
u2(pi/4,-pi) q[24];
cx q[0],q[24];
u2(0,3*pi/4) q[24];
cx q[13],q[24];
u1(pi/4) q[24];
cx q[4],q[24];
u1(-pi/4) q[24];
cx q[13],q[24];
h q[13];
cx q[12],q[13];
h q[13];
cu1(pi/2) q[12],q[13];
u2(pi/4,-pi) q[13];
u1(pi/4) q[24];
cx q[4],q[24];
u2(pi/4,3*pi/4) q[24];
cx q[0],q[24];
u2(-pi/2,-3*pi/4) q[0];
u2(0,3*pi/4) q[24];
u2(pi/4,-pi) q[4];
cx q[7],q[4];
u2(0,3*pi/4) q[4];
y q[8];
cx q[8],q[17];
u1(-pi/4) q[17];
cx q[6],q[17];
u1(pi/4) q[17];
u2(0,-pi/2) q[6];
cx q[6],q[10];
cx q[10],q[6];
u3(pi,pi/2,-pi/2) q[10];
cx q[10],q[21];
ry(-0.9334372225757264) q[10];
ry(-0.9334372225757264) q[21];
cx q[10],q[21];
u3(pi,-1.2858722001728342,1.855720453416959) q[10];
u3(1.459876706640902,-1.5162802954751222,-3.0762446501277636) q[21];
u3(1.0462487047505935,pi/2,-2.837110456503252) q[6];
cx q[8],q[17];
cry(0.32863181310879713) q[14],q[8];
u2(pi/4,3*pi/4) q[17];
cx q[5],q[17];
u2(0,3*pi/4) q[17];
swap q[14],q[17];
u1(0.6578853863146636) q[14];
s q[17];
u2(4.02010770867805,4.962401762592313) q[5];
cu1(2.903978469298288) q[5],q[22];
cx q[22],q[4];
u1(pi/4) q[4];
sx q[5];
cx q[6],q[17];
cx q[17],q[6];
u3(pi,pi/2,-pi/2) q[17];
sx q[6];
swap q[8],q[18];
rx(4.584074384668438) q[18];
cu3(2.722266541574506,3.095521816348276,2.0068082756148744) q[12],q[18];
u1(1.0099751582605458) q[8];
cx q[19],q[8];
ry(-2.5551313642523446) q[19];
ry(-2.5551313642523446) q[8];
cx q[19],q[8];
u2(-pi,-pi) q[19];
cx q[19],q[13];
u2(0,3*pi/4) q[13];
cx q[21],q[13];
u1(pi/4) q[13];
u1(-0.4114082426221275) q[8];
cx q[17],q[8];
ry(-2.9394472434650813) q[17];
ry(-2.9394472434650813) q[8];
cx q[17],q[8];
u2(-pi,-pi) q[17];
u2(pi/4,2.5430257379513748) q[8];
cx q[18],q[8];
tdg q[8];
u1(-pi/2) q[9];
cp(5.865243140274885) q[9],q[11];
cu3(2.5053932973696478,0.48975352498239305,1.7615083029852698) q[11],q[20];
u2(0,0) q[11];
cx q[11],q[15];
ry(3.0982667008384492) q[11];
ry(-3.0982667008384492) q[15];
cx q[11],q[15];
u2(-pi,-pi) q[11];
u1(-1.1804288314331686) q[15];
cu1(pi/2) q[15],q[10];
h q[10];
sdg q[15];
h q[20];
cu1(pi/8) q[3],q[20];
cx q[3],q[23];
cu1(-pi/8) q[23],q[20];
cx q[3],q[23];
cu1(pi/8) q[23],q[20];
t q[9];
cx q[23],q[9];
cu1(-pi/8) q[9],q[20];
cx q[3],q[9];
cu1(pi/8) q[9],q[20];
cx q[23],q[9];
cu1(2.3898754743448456) q[23],q[11];
cx q[11],q[4];
u3(1.390956736085117,-1.2267396486265518,0.3283619937425537) q[23];
u1(-pi/4) q[4];
cx q[22],q[4];
cx q[22],q[13];
u1(-pi/4) q[13];
cx q[21],q[13];
u1(pi/4) q[13];
h q[21];
cx q[22],q[13];
u2(pi/4,3*pi/4) q[13];
cx q[19],q[13];
u1(-pi/4) q[13];
cu1(pi/2) q[19],q[21];
u3(pi,pi/4,-pi/4) q[19];
h q[21];
u1(pi/4) q[4];
cx q[11],q[4];
u2(pi/4,3*pi/4) q[4];
cx q[7],q[4];
cu3(2.765394963235845,0.8004445919394358,0.6165110387891756) q[11],q[7];
h q[11];
u2(0,3*pi/4) q[4];
swap q[10],q[4];
cx q[7],q[13];
rz(2.7186945403145124) q[13];
cx q[7],q[13];
h q[13];
u3(1.188585016224166,2.897537369090424,-2.897537369090424) q[7];
cu1(-pi/8) q[9],q[20];
cx q[3],q[9];
z q[3];
crz(0.232442880424482) q[3],q[24];
u3(1.326094491887783,0,-pi/4) q[24];
u1(1.2697424892549058) q[3];
cu1(pi/8) q[9],q[20];
u2(pi/2,pi/2) q[20];
u2(pi/4,-pi) q[9];
cx q[2],q[9];
tdg q[9];
cx q[16],q[9];
cx q[5],q[16];
rz(4.4424885784459045) q[16];
cx q[5],q[16];
h q[16];
cx q[16],q[8];
u2(pi/4,-pi) q[5];
cx q[17],q[5];
u2(0,3*pi/4) q[5];
cx q[10],q[5];
u1(pi/4) q[5];
cx q[12],q[5];
u1(-pi/4) q[5];
cx q[10],q[5];
cry(4.026247510050746) q[16],q[10];
cx q[16],q[10];
cx q[10],q[16];
rx(pi/2) q[10];
u1(pi/4) q[5];
cx q[12],q[5];
u2(pi/4,3*pi/4) q[5];
cx q[17],q[5];
cx q[13],q[17];
u2(0,3*pi/4) q[5];
t q[8];
cx q[18],q[8];
crz(0.653273438468665) q[5],q[18];
U(1.3742032404139184,3.4200813662530303,3.255254129919474) q[5];u3(0.2829542673831269,-pi,3*pi/4) q[8];
cx q[13],q[8];
h q[8];
cu1(pi/2) q[13],q[8];
x q[13];
t q[9];
cx q[2],q[9];
s q[2];
cx q[20],q[2];
cx q[2],q[20];
u3(pi,pi/2,-pi/2) q[2];
cx q[2],q[3];
ry(0.9031337694909877) q[2];
u3(1.8638144000510888,0,-pi/2) q[20];
ry(-0.9031337694909877) q[3];
cx q[2],q[3];
u2(-pi,pi/2) q[2];
rzz(6.090476947818652) q[2],q[0];
rx(-pi/2) q[0];
ccx q[0],q[12],q[21];
u3(1.47241343555343,1.4516555655687196,1.270905919039718) q[12];
cy q[18],q[21];
s q[18];
u2(-2.267586558560999,-pi/2) q[2];
rx(pi/2) q[21];
rzz(4.23799086395988) q[21],q[10];
u3(pi,0,-pi/2) q[10];
rx(-pi/2) q[21];
u1(-1.2697424892549054) q[3];
ccx q[15],q[3],q[11];
h q[11];
u3(5.560399944749881,2.237351101609687,2.4000986549445003) q[15];
u2(0,0) q[3];
cx q[3],q[2];
ry(-2.126697875410218) q[2];
ry(2.126697875410218) q[3];
cx q[3],q[2];
u2(-pi/2,-0.8740060950287942) q[2];
u3(pi,-1.2858722001728342,1.855720453416959) q[3];
u3(1.570797371255484,-1.5709387688580687,0.8000629589507993) q[9];
cx q[9],q[1];
cx q[1],q[9];
u3(1.8477561649121184,-0.11846810425431453,2.3369964931636105) q[1];
cp(1.1216013695609326) q[20],q[1];
cry(5.242608112682733) q[1],q[0];
cy q[15],q[20];
h q[15];
u2(pi/4,-pi) q[20];
cx q[19],q[20];
u2(0,3*pi/4) q[20];
cx q[5],q[20];
u1(pi/4) q[20];
cx q[16],q[20];
u1(-pi/4) q[20];
cx q[5],q[20];
u1(pi/4) q[20];
cx q[16],q[20];
cp(4.189094092781458) q[16],q[15];
y q[16];
u2(pi/4,3*pi/4) q[20];
cx q[19],q[20];
u1(2.321335115310635) q[19];
u1(-pi/4) q[20];
h q[9];
cu1(pi/8) q[22],q[9];
cx q[22],q[4];
cu1(-pi/8) q[4],q[9];
cx q[22],q[4];
cu1(pi/8) q[4],q[9];
cx q[4],q[6];
cu1(-pi/8) q[6],q[9];
cx q[22],q[6];
cu1(pi/8) q[6],q[9];
cx q[4],q[6];
cp(4.582796006516916) q[24],q[4];
sx q[24];
s q[4];
cx q[4],q[24];
u3(pi,-pi/2,pi/2) q[24];
rzz(1.0748330612266623) q[24],q[23];
u2(-pi/4,-pi) q[23];
rx(-pi/2) q[24];
u3(pi,-5*pi/8,5*pi/8) q[4];
cu1(-pi/8) q[6],q[9];
cx q[22],q[6];
crx(3.9849516584591416) q[22],q[11];
u3(1.498196826191208,-0.04465010628259769,1.4253187492852897) q[11];
cx q[14],q[11];
rz(3.191277791358343) q[11];
cx q[14],q[11];
u1(pi/4) q[11];
tdg q[14];
cx q[14],q[23];
ccx q[22],q[17],q[3];
h q[17];
sx q[22];
cx q[18],q[22];
u2(-pi,0) q[18];
cx q[18],q[19];
ry(0.9945965206110885) q[18];
ry(-0.9945965206110885) q[19];
cx q[18],q[19];
u2(0.46518793807227476,-pi) q[18];
cu3(6.278202186223771,2.7451839109370137,6.220878697863821) q[18],q[16];
sdg q[16];
u3(pi,-pi/2,pi/2) q[18];
u1(-2.321335115310635) q[19];
cu1(pi/8) q[22],q[20];
cx q[22],q[21];
cu1(-pi/8) q[21],q[20];
cx q[22],q[21];
cu1(pi/8) q[21],q[20];
cx q[21],q[12];
cu1(-pi/8) q[12],q[20];
cx q[22],q[12];
cu1(pi/8) q[12],q[20];
cx q[21],q[12];
cu1(-pi/8) q[12],q[20];
u2(pi/4,-pi) q[21];
cx q[22],q[12];
cu1(pi/8) q[12],q[20];
t q[12];
h q[20];
cy q[20],q[15];
u1(-3.100842109550456) q[15];
s q[20];
cx q[22],q[10];
rz(0.8659721774059869) q[10];
cx q[22],q[10];
u2(0,pi/2) q[10];
h q[22];
u2(0,3*pi/4) q[23];
h q[3];
cu1(pi/8) q[6],q[9];
u3(0.9085132279931618,-pi/2,pi/2) q[6];
rzz(2.3862594963693367) q[6],q[2];
rx(-pi/2) q[2];
cx q[2],q[17];
h q[17];
cu1(pi/2) q[2],q[17];
crz(3.129135755540523) q[5],q[17];
x q[17];
rx(-pi/2) q[6];
ccx q[7],q[6],q[1];
U(0.07780435658085334,1.4096355722729612,1.5845811055833028) q[1];cp(4.105529833317943) q[6],q[2];
cx q[2],q[21];
tdg q[21];
cx q[24],q[21];
t q[21];
cx q[2],q[21];
u2(-pi,3*pi/4) q[21];
cp(4.783966963510564) q[21],q[10];
s q[10];
u1(-0.4591530641470012) q[21];
u2(-pi,-pi) q[24];
cx q[6],q[23];
u1(pi/4) q[23];
cu1(5.77997236053145) q[8],q[3];
swap q[13],q[3];
u2(0,-1.9633501301561713) q[13];
cx q[13],q[15];
ry(-2.6224026093989528) q[13];
ry(-2.6224026093989528) q[15];
cx q[13],q[15];
u2(-pi,-0.1648245051929651) q[13];
u1(3.100842109550456) q[15];

// rxx gate
h q[16];
h q[13];
cx q[16],q[13];
rz(4.481152002640207) q[13];
cx q[16],q[13];
h q[13];
h q[16];

s q[13];
h q[16];
s q[3];
u3(0.6547798133758924,-2.2921704421764124,-1.6875833842285024) q[9];
cz q[9],q[0];
ccx q[8],q[7],q[0];
cx q[0],q[23];
u1(-pi/4) q[23];
cx q[6],q[23];
u1(pi/4) q[23];
cx q[0],q[23];
sx q[0];
cx q[20],q[0];
h q[0];
u2(0.7819600061713401,0.9539929314527651) q[20];
u2(pi/4,3*pi/4) q[23];
cx q[14],q[23];

// rxx gate
h q[14];
h q[12];
cx q[14],q[12];
rz(5.8801089873885495) q[12];
cx q[14],q[12];
h q[12];
h q[14];

s q[12];
u3(1.9404055173111059,-0.9934392683607753,0.9934392683607753) q[14];
crx(1.1341756281317497) q[12],q[14];
u2(0,3*pi/4) q[23];
cx q[23],q[22];
h q[22];
cu1(pi/2) q[23],q[22];
u2(pi/2,0.45495367267004383) q[22];
cx q[13],q[22];
x q[13];
tdg q[22];
ccx q[7],q[19],q[5];
cx q[17],q[7];
u3(4.7734621118062295,1.7153411695347511,-1.7153411695347511) q[19];
cy q[19],q[17];
u3(5.843138700117417,2.1433810842008754,-2.1433810842008754) q[17];
rz(4.918024527583518) q[19];
u3(1.4328976504076518,-1.4628396734821307,1.8137735585659627) q[5];
rx(pi/2) q[7];
cx q[9],q[11];
tdg q[11];
cx q[4],q[11];
t q[11];
u3(1.688240918899987,2.3126746154788504,-2.077946445058643) q[4];
cu1(pi/2) q[2],q[4];
h q[4];
cx q[9],q[11];
u2(0,3*pi/4) q[11];
crz(4.471219474002855) q[11],q[1];
y q[1];
cu1(5.836980980008532) q[1],q[15];
p(1.8372882095991316) q[1];
p(2.0136114723535687) q[11];
sx q[15];
cx q[23],q[11];
cu3(2.6744201366429095,2.8720875317093553,0.12118126338059888) q[1],q[23];
u2(0,0) q[1];
h q[11];
cu1(pi/2) q[20],q[11];
h q[11];
rzz(5.6530911605170235) q[11],q[18];
u1(-2.3656389778472353) q[23];
cx q[1],q[23];
ry(0.9160280901995559) q[1];
ry(-0.9160280901995559) q[23];
cx q[1],q[23];
u3(2.495460678504315,2.0783116346323567,-pi/2) q[1];
u2(pi/2,0.7948426510523388) q[23];
cu3(4.492151131185544,0.5707448227010898,2.9685410866418223) q[8],q[9];
cu1(pi/2) q[6],q[8];
cswap q[4],q[8],q[2];
u2(0,-pi/2) q[2];
cx q[2],q[10];
cx q[10],q[2];
h q[10];
ccx q[15],q[10],q[14];
ry(3.1785152111715185) q[10];
U(2.9211312050376304,4.5019400727576375,4.764939123566669) q[14];u2(-pi,-pi) q[15];
u2(0,0) q[2];
u2(pi/4,-3*pi/4) q[4];
u2(0,1.8076780745426753) q[6];
cu1(pi/2) q[24],q[6];
h q[6];
ccx q[17],q[6],q[16];
h q[16];
rx(pi/2) q[17];
cu3(1.9841348272878572,5.736466077952092,4.346750760670928) q[8],q[0];
cy q[0],q[5];
u1(-2.0710065853489485) q[0];
cu1(4.489766609492422) q[11],q[5];
h q[11];
cx q[2],q[0];
ry(-0.5390664374637708) q[0];
ry(0.5390664374637708) q[2];
cx q[2],q[0];
u1(2.0710065853489485) q[0];
u2(-pi,-pi) q[2];
cu1(pi/8) q[5],q[15];
cx q[5],q[23];
cu1(-pi/8) q[23],q[15];
cx q[5],q[23];
cu1(pi/8) q[23],q[15];
cx q[23],q[0];
cu1(-pi/8) q[0],q[15];
cx q[5],q[0];
cu1(pi/8) q[0],q[15];
cx q[23],q[0];
cu1(-pi/8) q[0],q[15];
cx q[5],q[0];
cu1(pi/8) q[0],q[15];
u2(2.2239394491362816,-pi) q[0];
h q[15];
sx q[5];
cx q[8],q[4];
tdg q[4];
cx q[9],q[3];
cx q[3],q[9];
rx(pi/2) q[3];
rzz(5.723088953577587) q[3],q[7];
rx(-pi/2) q[3];

// rxx gate
h q[3];
h q[9];
cx q[3],q[9];
rz(5.652658666079441) q[9];
cx q[3],q[9];
h q[9];
h q[3];

ccx q[3],q[12],q[19];
s q[12];
cu3(5.462197570484291,3.665781665481852,5.997614100109807) q[19],q[6];
sdg q[19];
u3(2.1271772777091504,1.1957413739425027,-1.8283080643316847) q[3];
u2(0,0) q[6];
u2(pi/2,0) q[7];
cx q[7],q[21];
ry(-2.7545756365614595) q[21];
ry(2.7545756365614595) q[7];
cx q[7],q[21];
u1(0.4591530641470012) q[21];
ccx q[21],q[20],q[24];
cu3(2.721229117269056,5.204283962848544,5.734864516379402) q[13],q[20];
cz q[13],q[2];
tdg q[2];
cu3(2.5486202861609013,5.455186002346719,0.3124433966484505) q[0],q[2];
u3(1.878031427940869,0.8428094587670425,-1.0043179928653068) q[0];
h q[20];
cu1(pi/2) q[12],q[20];
u3(0.8704755344193303,pi/2,0.12074173866922022) q[12];
h q[20];
cx q[19],q[20];
cx q[20],q[19];
cu3(4.445515538886835,5.795227946503715,2.08979246814018) q[20],q[19];
rx(1.4301333258738211) q[19];
cu3(1.1837848253815477,2.600741011892255,0.24815976274474225) q[21],q[18];
u1(0.08405990019985232) q[21];

// rxx gate
h q[22];
h q[18];
cx q[22],q[18];
rz(5.466079848749496) q[18];
cx q[22],q[18];
h q[18];
h q[22];

// rxx gate
h q[15];
h q[18];
cx q[15],q[18];
rz(5.879892563791669) q[18];
cx q[15],q[18];
h q[18];
h q[15];

h q[15];
rx(pi/2) q[24];
rzz(1.683637372492123) q[24],q[17];
u3(0.7705860098460017,-pi/2,-pi) q[17];
u3(pi/4,0.3921592027673291,-pi) q[24];
cx q[6],q[21];
ry(-0.3615423674678601) q[21];
ry(0.3615423674678601) q[6];
cx q[6],q[21];
u1(-1.4886767919666006) q[21];
u2(-pi,-pi) q[6];
u2(-pi,-pi) q[7];
cx q[7],q[4];
t q[4];
u3(2.990688901832239,-pi/2,-2.434859330783328) q[7];
cx q[8],q[4];
u2(0,3*pi/4) q[4];
cu1(pi/2) q[16],q[4];
cu1(pi/2) q[16],q[7];
sx q[16];
cx q[16],q[15];
h q[15];
cu1(pi/2) q[16],q[15];
u3(0.5227288215962327,-1.2391236856393921,-1.9270387333499475) q[15];
u2(pi/4,-pi) q[4];
cx q[14],q[4];
tdg q[4];
cx q[10],q[4];
ch q[22],q[10];
rz(3.9715161267843433) q[10];
t q[22];
ch q[10],q[22];
t q[4];
cx q[14],q[4];
cx q[23],q[14];
z q[23];
u2(-1.258107979290631,3*pi/4) q[4];

// rxx gate
h q[18];
h q[4];
cx q[18],q[4];
rz(4.848705103641198) q[4];
cx q[18],q[4];
h q[4];
h q[18];

u2(0,0) q[18];
cx q[18],q[24];
ry(1.6427278250281931) q[18];
ry(-1.6427278250281931) q[24];
cx q[18],q[24];
u3(pi,-0.639985212896022,1.7162092772963238) q[18];
u3(1.5878865234624153,-1.4135109497751916,-1.0250835487150995) q[24];
cp(4.453432296488051) q[4],q[23];
s q[23];
u2(-pi,-0.4734334362220203) q[4];
u2(pi/2,-pi) q[7];
cx q[7],q[5];
cu1(4.823203269977381) q[5],q[21];
ccx q[2],q[16],q[21];
cx q[10],q[16];
cx q[16],q[10];
u2(0,-pi/2) q[2];
sx q[21];
cx q[23],q[21];
u2(pi/4,-pi) q[21];
u3(pi,0,-pi) q[23];
cy q[5],q[20];
x q[20];
cx q[20],q[21];
tdg q[21];
u3(pi,-pi/2,pi/2) q[7];
cry(4.742723739871608) q[3],q[7];
ry(2.6999393462360737) q[8];
cx q[8],q[11];
h q[11];
cu1(pi/2) q[8],q[11];
cu1(2.6629964451205126) q[11],q[13];
u1(-pi/4) q[11];
cx q[11],q[18];
u2(0,0) q[13];
u2(0,3*pi/4) q[18];
cx q[6],q[8];
u3(pi,pi/2,-pi/2) q[6];
cry(1.9489200290558342) q[19],q[6];
cx q[19],q[21];
rx(0.8488869736789348) q[19];
t q[21];
cx q[20],q[21];
u2(0,0) q[20];
u2(0,3*pi/4) q[21];
cu3(1.4797368235870791,4.870174885679805,3.7168421721016314) q[8],q[14];
s q[14];
sx q[8];
cx q[14],q[8];
u3(pi,3*pi/4,-3*pi/4) q[14];
cz q[8],q[22];
cp(0.3605656839243291) q[22],q[10];
rx(4.004022353166407) q[22];
u3(0.7522657336379962,-0.4387920300802488,1.5419021864198008) q[9];
cx q[17],q[9];
ry(-0.4721822291387306) q[17];
ry(-0.4721822291387306) q[9];
cx q[17],q[9];
u2(1.1643754599946448,-pi) q[17];
cx q[13],q[17];
ry(1.3043450138452497) q[13];
ry(-1.3043450138452497) q[17];
cx q[13],q[17];
u2(-pi,-pi) q[13];
u1(1.9772171935951484) q[17];
swap q[17],q[13];
cu1(pi/2) q[13],q[5];
cx q[17],q[18];
u1(pi/4) q[18];
ch q[6],q[13];
u3(5.680339725825811,0.8664493954399319,3.8986101284990853) q[13];
cx q[7],q[18];
u1(-pi/4) q[18];
cx q[17],q[18];
u1(pi/4) q[18];
cx q[7],q[18];
u2(pi/4,3*pi/4) q[18];
cx q[11],q[18];
ry(4.530231173130571) q[11];
cu3(0.48838449406823775,3.355252367208179,4.880133208171145) q[12],q[11];
h q[12];
u2(-2.402190877362159,3*pi/4) q[18];
cx q[20],q[18];
ry(-1.07880349345356) q[18];
ry(1.07880349345356) q[20];
cx q[20],q[18];
u1(2.402190877362159) q[18];
u2(3*pi/4,-pi) q[20];
u1(4.899369619958352) q[7];
cu1(pi/2) q[7],q[23];
h q[23];
x q[7];
u2(pi/2,1.4333574577860855) q[9];
rzz(5.38369851665201) q[9],q[1];
s q[1];
cx q[2],q[1];
cx q[1],q[2];
h q[1];
cy q[1],q[8];
sx q[1];
cu1(1.1031181137251862) q[11],q[1];
u2(pi/4,-pi) q[2];
cx q[17],q[2];
u2(0,3*pi/4) q[2];
cx q[16],q[2];
u1(pi/4) q[2];
cx q[5],q[2];
u1(-pi/4) q[2];
cx q[16],q[2];
u1(0.8587848114820327) q[16];
u1(pi/4) q[2];
cx q[5],q[2];
u2(pi/4,3*pi/4) q[2];
cx q[17],q[2];
u1(2.7080099293991484) q[17];
u2(0,3*pi/4) q[2];
cu1(2.576867794823207) q[2],q[10];
u2(0,0) q[10];
cx q[10],q[16];
ry(2.641036725395699) q[10];
cswap q[13],q[2],q[19];
ry(-2.641036725395699) q[16];
cx q[10],q[16];
u2(-pi,-pi) q[10];
u1(0.7120115153128639) q[16];
u2(-pi/2,-pi) q[5];
cu1(pi/8) q[18],q[5];
cx q[18],q[23];
cu1(-pi/8) q[23],q[5];
cx q[18],q[23];
cu1(pi/8) q[23],q[5];
cx q[23],q[22];
cu1(-pi/8) q[22],q[5];
cx q[18],q[22];
cu1(pi/8) q[22],q[5];
cx q[23],q[22];
cu1(-pi/8) q[22],q[5];
cx q[18],q[22];
cu1(pi/8) q[22],q[5];
h q[5];

// rxx gate
h q[8];
h q[21];
cx q[8],q[21];
rz(1.1624458615127216) q[21];
cx q[8],q[21];
h q[21];
h q[8];

cx q[21],q[12];
rz(0.31083825052696085) q[12];
cx q[21],q[12];
h q[12];
u1(3.21500739169376) q[8];
crx(0.4016937296642691) q[9],q[3];
u3(0.21955907282698506,-0.8915634642424921,-1.214214649388269) q[3];
ch q[9],q[15];
u3(1.2754440620324945,1.394077944490939,0.8155137768258642) q[15];
cx q[4],q[15];
ry(-1.773527165247908) q[15];
ry(1.773527165247908) q[4];
cx q[4],q[15];
u1(-1.0785051488684783) q[15];
u2(-pi,-pi) q[4];
cswap q[6],q[9],q[14];
sxdg q[14];
rx(pi/2) q[9];
rzz(5.523641745621758) q[24],q[9];
rx(-pi/2) q[24];
rx(-pi/2) q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24];
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
meas[15] = measure q[15];
meas[16] = measure q[16];
meas[17] = measure q[17];
meas[18] = measure q[18];
meas[19] = measure q[19];
meas[20] = measure q[20];
meas[21] = measure q[21];
meas[22] = measure q[22];
meas[23] = measure q[23];
meas[24] = measure q[24];