`include "TFF.v"
module L9Q2(x,clk,reset,A,B);
input x,clk, reset;
output A,B;
wire Ta,Tb;

assign Ta = (B&~x)|(~A&B);
assign Tb = (~A&B&x)|(~B&~x)|(A&~x);

TFF TFF_insa(Ta,clk,A,reset);
TFF TFF_insb(Tb,clk,B,reset);
endmodule