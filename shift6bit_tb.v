`include "shift6bit.v"
`timescale 1ns/1ns
module shift6bit_tb();

reg w,clk,reset;
wire [5:0] Q;

shift6bit shift6bit_ins(w,clk,Q,reset);

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    $dumpfile("shift6bit_tb.vcd");
    $dumpvars(0,shift6bit_tb);
end

initial begin
    reset = 1; #1;
    reset = 0; w = 1; #5;
    reset = 0; w = 1; #5;
    reset = 0; w = 1; #5;
    reset = 0; w = 1; #5;
    reset = 0; w = 1; #5;
    reset = 0; w = 1; #5;
    $finish;
end
endmodule