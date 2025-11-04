`include "bcd2.v"
module bcd2_tb();

reg clk, reset;
wire [3:0] ones, tens;

bcd2 bcd2_ins(clk, reset, ones, tens);

initial begin
    $dumpfile("bcd2_tb.vcd");
    $dumpvars(0,bcd2_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    reset = 0; #2;
    reset = 1; #1000;
    $finish;
end
endmodule