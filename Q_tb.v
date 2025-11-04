`include "Q.v"
`timescale 1ns/1ns

module Q_tb();

reg [2:0]A,B;
reg clk, reset;
wire [2:0] f;

Q Q_ins(A,B,clk,reset,f);

initial begin
    $dumpfile("Q_tb.vcd");
    $dumpvars(0,Q_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; A = 0; B = 0; #2;
    reset = 0;
    A = 5; B = 2; #4;
    A = 7; B = 3; #4;
    A = 0; B = 2; #4;
    A = 1; B = 1; #4;
    $finish;
end
endmodule