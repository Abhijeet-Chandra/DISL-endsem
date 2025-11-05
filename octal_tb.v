`include "octal.v"
module octal_tb();
reg clk, reset;
wire [2:0]Q;
wire leading;

octal octal_ins(clk,reset,Q,leading);

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
    $dumpfile("octal_tb.vcd");
    $dumpvars(0,octal_tb);
    reset = 1; #2;
    reset = 0; #100;
    $finish;
end

endmodule
