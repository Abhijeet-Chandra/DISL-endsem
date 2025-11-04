`include "pipo.v"

module pipo_tb();

reg [3:0] D;
reg clk, reset;
wire [3:0] Q;

pipo pipo_ins(D,clk,Q,reset);

initial begin
    $dumpfile("pipo_tb.vcd");
    $dumpvars(0,pipo_tb);
end

initial begin
    clk = 0;
    forever #1 clk = ~clk;
end

initial begin
    reset = 1; D = 0; #2;
    reset = 0;
    D = 4; #2;
    D = 5; #2;
    D = 9; #2;
    D = 7; #2;
    $finish;
end
endmodule