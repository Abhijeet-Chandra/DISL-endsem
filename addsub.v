`include "fulladder.v"
module addsub(a,b,ctrl,s,cout);
input [2:0] a,b;
input ctrl;
output [2:0] s;
output cout;
wire [1:0]c;
fulladder fulladder1(a[0],b[0]^ctrl,ctrl,s[0],c[0]);
fulladder fulladder2(a[1],b[1]^ctrl,c[0],s[1],c[1]);
fulladder fulladder3(a[2],b[2]^ctrl,c[1],s[2],cout);
endmodule