`include "priority4to2.v"
`timescale 1ns/1ns

module priority4to2_tb();

reg [3:0] w;
wire z;
wire [1:0] y;

priority4to2 priority4to2_ins(w,z,y);

initial begin
    $dumpfile("priority4to2_tb.vcd");
    $dumpvars(0,priority4to2_tb);
end

initial begin
    for(integer i = 0; i<16; i++)begin
        w = i; #2;
    end
end
endmodule