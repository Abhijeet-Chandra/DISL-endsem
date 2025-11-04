`include "L10A3.v"
`timescale 1ns/1ns

module L10A3_tb();

reg [3:0]A;
reg clk,reset;
wire [3:0]Y;

L10A3 L10A3_ins(A,Y,clk,reset);

initial begin
    $dumpfile("L10A3_tb.vcd");
    $dumpvars(0,L10A3_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; A = 4'b0000;#2;
    reset = 0; A = 4'b 1101;
    #40;
    $finish;
end
endmodule