`include "JKFF_active_low.v"
`timescale 1ns/1ns

module JKFF_active_low_tb();

reg J,K,clk,reset;
wire Q;

JKFF_active_low JKFF_active_low_ins(J,K,clk,Q,reset);

initial begin
    $dumpfile("JKFF_active_low_tb.vcd");
    $dumpvars(0,JKFF_active_low_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 0; J = 0; K = 0; #2;
    reset = 0; J = 0; K = 1; #2;
    reset = 0; J = 1; K = 0; #2;
    reset = 0; J = 1; K = 1; #2;

    reset = 1; J = 0; K = 0; #2;
    reset = 1; J = 0; K = 1; #2;
    reset = 1; J = 1; K = 0; #2;
    reset = 1; J = 1; K = 1; #2;

    $finish;
end
endmodule