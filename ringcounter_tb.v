`include "ringcounter.v"
`timescale 1ns/1ns

module ringcounter_tb();

reg clk, reset, preset;
wire [3:0]Q;

ringcounter ringcounter_ins(clk,Q,reset,preset);

initial begin
    $dumpfile("ringcounter_tb.vcd");
    $dumpvars(0,ringcounter_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; preset = 0; #2;  
    reset = 0; preset = 1; #2;
    reset = 0; preset = 0; #40;
    $finish;
end
endmodule