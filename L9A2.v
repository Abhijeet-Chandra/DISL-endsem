`include "SRFF.v"

module L9A2(x,clk,reset,A,B);
input x,clk,reset;
output A,B;

wire Sa,Ra,Sb,Rb;

assign Sa = (~x&~A&~B)|(x&B);
assign Ra = (~x&A&~B);
assign Sb = ~A|x;
assign Rb = (~x&A);

SRFF SRFF_insa(Sa,Ra,clk,A,reset);
SRFF SRFF_insb(Sb,Rb,clk,B,reset);

endmodule