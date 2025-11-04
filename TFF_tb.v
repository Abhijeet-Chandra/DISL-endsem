`include "TFF.v"
`timescale 1ns/1ns

module TFF_tb();

reg T,clk,reset;
wire Q;

TFF TFF_ins(T,clk,Q,reset);

initial begin
    $dumpfile("TFF_tb.vcd");
    $dumpvars(0,TFF_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 0; T = 0; #2;
    reset = 0; T = 1; #2;

    reset = 1; T = 1; #5;
    reset = 1; T = 0; #5;
    reset = 1; T = 0; #5;
    reset = 1; T = 1; #5;
    $finish;
end
endmodule