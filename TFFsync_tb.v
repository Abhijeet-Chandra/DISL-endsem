`include "TFFsync.v"
`timescale 1ns/1ns
module TFFsync_tb();

reg T,clk,reset;
wire Q;

TFFsync TFFsync_ins(T,clk,Q,reset);

initial begin
    $dumpfile("TFFsync_tb.vcd");
    $dumpvars(0,TFFsync_tb);
end

initial begin
    clk = 0;
    forever #2 clk = ~clk;
end

initial begin
   reset = 1; T = 0;#2;
   reset = 1; T = 1;#2;

   reset = 0; T = 1;#2;
   reset = 0; T = 1;#2;
   reset = 0; T = 1;#2;
   reset = 0; T = 1;#2;
   reset = 0; T = 1;#2;
   reset = 0; T = 1;#2;
   reset = 0; T = 0;#2;
   reset = 0; T = 1;#2;
   $finish;
end
endmodule