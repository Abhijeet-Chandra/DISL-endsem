`include "dec2to4.v"

module dec3to8(w,en,y);

input [2:0] w;
input en;
output [0:7]y;

dec2to4 dec2to4_1(w[1:0],(~w[2]&en),y[0:3]);
dec2to4 dec2to4_2(w[1:0],(w[2]&en),y[4:7]);

endmodule