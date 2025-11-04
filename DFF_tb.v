`include "DFF.v"
`timescale 1ns/1ns
module DFF_tb();
reg D,clk,reset;
wire Q;

DFF DFF_ins(D,clk,Q,reset);

initial begin
    $dumpfile("DFF_tb.vcd");
    $dumpvars(0,DFF_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; D = 0; #1;
    reset = 1; D = 1; #1;

    reset = 0;
    D = 1; #5;
    D = 1; #5;
    D = 0; #5;
    D = 0; #5;
    D = 1; #5;
    D = 0; #5;
    D = 1; #5;
    $finish;
end
endmodule