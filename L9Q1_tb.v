`include "L9Q1.v"
`timescale 1ns/1ns

module L9Q1_tb();

reg E,x,clk, reset;
wire Qa, Qb;

L9Q1 L9Q1_ins(E,x,clk,reset,Qa,Qb);

initial begin
    $dumpfile("L9Q1_tb.vcd");
    $dumpvars(0,L9Q1_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; E = 0; x = 0; #3;
    reset = 0;
    E = 0; x = 0; #5;
    E = 0; x = 1; #5;
    E = 1; x = 0; #5;
    E = 1; x = 1; #5;
    $finish;
end

endmodule