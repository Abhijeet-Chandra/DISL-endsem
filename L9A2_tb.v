`include "L9A2.v"
`timescale 1ns/1ns
module L9A2_tb();

reg x,clk,reset;
wire A,B;

L9A2 L9A2_ins(x,clk,reset,A,B);

initial begin
    $dumpfile("L9A2_tb.vcd");
    $dumpvars(0,L9A2_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset =1;
    x=0; #2;
    reset =0;
    x=1; #2;
    x=0; #2;
    x=1; #2;
    x=0; #2;
    x=1; #2;
    x=0; #2;
    x=1; #2;
    x=0; #2;
    x=1; #2;
    x=0; #2;
   $finish; 
end
endmodule