`include "L10Q3.v"
`timescale 1ns/1ns
module L10Q3_tb();

reg clk, reset;
wire A,B,C;
wire [2:0] out;

L10Q3 L10Q3_ins(clk,reset,A,B,C,out);

initial begin
    $dumpfile("L10Q3_tb.vcd");
    $dumpvars(0,L10Q3_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 0; #2;
    reset = 1; #40;
    $finish;
end
endmodule