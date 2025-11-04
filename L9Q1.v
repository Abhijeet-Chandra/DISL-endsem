`include "JKFF.v"
module L9Q1(E,x,clk,reset,Qa,Qb);
input E,x,clk, reset;
output Qa, Qb;
wire Ja, Ka, Jb, Kb;

assign Ja = (E&x&Qb)|(E&~x&~Qb);
assign Ka = (E&x&Qb)|(E&~x&~Qb);
assign Jb = E;
assign Kb = E;

JKFF JKFFa(Ja,Ka,clk,Qa,reset);
JKFF JKFFb(Jb,Kb,clk,Qb,reset);

endmodule