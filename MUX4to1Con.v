`include "addsub.v"
module MUX4to1Con(A,B,s,f);

input [2:0]A,B;
input [1:0] s;
output reg [2:0]f;
wire [2:0] sum, diff;
wire c1,c2;

addsub addsub_ins(A,B,1'b0,sum,c1);
addsub addsub_ins1(A,B,1'b1,diff,c2);

always @(*) begin
    if(s==0) f = sum;
    else if(s==1)f = diff;
    else if(s==2) f = A&B;
    else f = A|B;
end
endmodule
