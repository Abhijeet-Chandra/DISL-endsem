`include "johnson5bit.v"
module johnson5bit_tb();

reg clk, reset;
wire [4:0] Q;

johnson5bit johnson5bit(clk, reset, Q);


initial begin
    $dumpfile("johnson5bit_tb.vcd");
    $dumpvars(0,johnson5bit_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 1; #2;
    reset = 0; #40;
    $finish;
end
endmodule