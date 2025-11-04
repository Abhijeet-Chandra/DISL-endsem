`include "ring_using_dec.v"
`timescale 1ns/1ns
module ring_using_dec_tb();

reg clk, reset;
wire [3:0] Q;

ring_using_dec ring_using_dec_ins(clk,reset,Q);

initial begin
    $dumpfile("ring_using_dec_tb.vcd");
    $dumpvars(0,ring_using_dec_tb);
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