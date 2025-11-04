`include "async_up_TFF.v"
`timescale 1ns/1ns

module async_up_TFF_tb();

reg clk, reset;
wire [3:0] Q;

async_up_TFF async_up_TFF_ins(clk,Q,reset);

initial begin
    $dumpfile("async_up_TFF_tb.vcd");
    $dumpvars(0,async_up_TFF_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 0; #2;
    reset = 1; #62;
    $finish;
end
endmodule