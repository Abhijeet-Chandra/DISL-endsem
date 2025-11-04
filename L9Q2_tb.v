`include "L9Q2.v"
`timescale 1ns/1ns

module L9Q2_tb();
reg clk,x,reset;
wire A,B;


L9Q2 L9Q2_ins(x,clk,reset,A,B);


initial begin
    $dumpfile("L9Q2_tb.vcd");
    $dumpvars(0,L9Q2_tb);
end

initial begin
    clk = 0; 
    forever #2 clk = ~clk;
end

initial begin
    reset = 0; x = 0; #2;
    reset = 0; x = 1; #2;

    reset = 1; 
    x = 0; #2;
    x = 1; #2;
    x = 1; #2;
    x = 0; #2;
    x = 1; #2;
    x = 1; #2;
    x = 1; #2;
    x = 0; #2;
    $finish;
end
endmodule