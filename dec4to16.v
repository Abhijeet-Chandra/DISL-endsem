`include "dec3to8For.v"

module dec4to16(w,en,y);

input [3:0] w;
input en;
output [0:15]y;

dec3to8For dec3to8For_1(w[2:0],(~w[3]&en),y[0:7]);
dec3to8For dec3to8For_2(w[2:0],(w[3]&en),y[8:15]);

endmodule
