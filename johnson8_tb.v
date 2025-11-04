`include "johnson8.v"
`timescale 1ns/1ns
module johnson8_tb();

reg clk, reset;
wire [3:0]Q;
wire [7:0]T;

johnson8 johnson8_ins(clk,reset,Q,T);

initial begin
    $dumpfile("johnson8_tb.vcd");
    $dumpvars(0,johnson8_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; #2;
    reset = 0; #28;
    $finish;
end
endmodule

