`include "JKFF.v"
`timescale 1ns/1ns

module octal(clk,reset,Q,leading);

input clk, reset;
output [2:0]Q;
output reg leading;

JKFF JKFF_ins1(1'b1,1'b1,clk,Q[0],reset);
JKFF JKFF_ins2(1'b1,1'b1,Q[0],Q[1],reset);
JKFF JKFF_ins3(1'b1,1'b1,Q[1],Q[2],reset);

always @(posedge clk , posedge reset) begin
    if(reset) leading <=1;
    else if(Q==0) leading <=~leading;
end
endmodule