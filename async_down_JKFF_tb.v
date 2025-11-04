`include "async_down_JKFF.v"
`timescale 1ns/1ns

module async_down_JKFF_tb();

reg clk, reset;
wire [3:0] Q;

async_down_JKFF async_down_JKFF_ins(clk,Q,reset);

initial begin
    $dumpfile("async_down_JKFF_tb.vcd");
    $dumpvars(0,async_down_JKFF_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; #2;
    reset = 0; #62;
    $finish;
end
endmodule