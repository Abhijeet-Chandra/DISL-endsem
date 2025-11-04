`include "DFF.v"
module ringcounter(clk,Q,reset,preset);
input clk,reset,preset;
output [3:0]Q;

DFF DFF_ins1(Q[0],clk,Q[3],reset,preset);
DFF DFF_ins2(Q[3],clk,Q[2],reset,1'b0);
DFF DFF_ins3(Q[2],clk,Q[1],reset,1'b0);
DFF DFF_ins4(Q[1],clk,Q[0],reset,1'b0);

endmodule