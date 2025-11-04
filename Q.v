`include "DFF.v"
`include "MUX4to1Con.v"
module Q(A,B,clk,reset,f);

input [2:0]A,B;
input clk, reset;
output [2:0]f;

wire Dm,Dn,M,N;

assign Dm = M^N;
assign Dn = ~N;

DFF DFF_1(Dm,clk,M,reset);
DFF DFF_2(Dn,clk,N,reset);

MUX4to1Con MUX4to1Con_ins(A,B,{M,N},f);

endmodule