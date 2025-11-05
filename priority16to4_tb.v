`include "priority16to4.v"
`timescale 1ns/1ns

module  priority16to4_tb();


reg [15:0] w;
wire z;
wire [3:0] y;

priority16to4 priority16to4_ins(w,z,y);

initial begin
    $dumpfile("priority16to4_tb.vcd");
    $dumpvars(0,priority16to4_tb);

    for(integer i = 0; i<65535; i++)begin
        w = i; #2;
    end
end
endmodule