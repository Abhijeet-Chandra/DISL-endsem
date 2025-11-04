`include "JKFF.v"
module async_down_JKFF(clk,Q,reset);

input clk, reset;
output [3:0] Q;

JKFF JKFF_ins1(1'b1,1'b1,clk,Q[0],reset);
JKFF JKFF_ins2(1'b1,1'b1,Q[0],Q[1],reset);
JKFF JKFF_ins3(1'b1,1'b1,Q[1],Q[2],reset);
JKFF JKFF_ins4(1'b1,1'b1,Q[2],Q[3],reset);
endmodule