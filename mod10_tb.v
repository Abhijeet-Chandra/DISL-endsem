`include "mod10.v"
module mod10_tb();
reg clk, reset;
wire [3:0] Q;

mod10 mod10_ins(clk,Q,reset);

initial begin
    $dumpfile("mod10_tb.vcd");
    $dumpvars(0,mod10_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 0; #2;
    reset = 1; #80;
    $finish;
end

endmodule