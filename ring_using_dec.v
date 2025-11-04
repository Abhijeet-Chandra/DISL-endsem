`include "dec2to4.v"
`include "TFF.v"
module ring_using_dec(clk,reset,Q);

input clk,reset;
output [3:0]Q;

wire A,B;
wire [1:0]w;

TFF TFF1(1'b1, clk, A, reset);
TFF TFF2(1'b1, A, B, reset);
assign w = {B,A};

dec2to4 dec2to4_ins(w,1'b1,Q);

endmodule
