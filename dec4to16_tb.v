`include "dec4to16.v"
`timescale 1ns/1ns

module dec4to16_tb();

reg [3:0] w;
reg en;
wire [0:15] y;

dec4to16 dec4to16_ins(w,en,y);

initial begin
    $dumpfile("dec4to16_tb.vcd");
    $dumpvars(0,dec4to16_tb);
end

initial begin
    for(integer i = 0; i<16; i++)begin
        en = 0; w = i; #2;
    end
    for(integer i = 0; i<16; i++)begin
        en = 1; w = i; #2;
    end
end
endmodule