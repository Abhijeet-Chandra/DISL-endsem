`include "TFF.v"
module L10Q3(clk,reset,A,B,C,out);

input clk,reset;
output A,B,C;
output [2:0] out;

wire Ta,Tb,Tc;

assign Ta = B;
assign Tb = C;
assign Tc = (~C)|(A&B);

TFF TFF1(Ta,clk,A,reset);
TFF TFF2(Tb,clk,B,reset);
TFF TFF3(Tc,clk,C,reset);

assign out = {A,B,C};
endmodule