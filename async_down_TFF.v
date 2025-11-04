`include "TFF.v"
module async_down_TFF(clk,Q,reset);

input clk,reset;
output [3:0] Q;

TFF TFF_ins1(1'b1,clk,Q[0],reset);
TFF TFF_ins2(1'b1,Q[0],Q[1],reset);
TFF TFF_ins3(1'b1,Q[1],Q[2],reset);
TFF TFF_ins4(1'b1,Q[2],Q[3],reset);
endmodule