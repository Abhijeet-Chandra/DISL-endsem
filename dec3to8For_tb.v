`include "dec3to8For.v"
`timescale 1ns/1ns

module dec3to8For_tb();

reg [2:0] w;
reg en;
wire [0:7] y;

dec3to8For dec3to8For_ins(w,en,y);

initial begin
    $dumpfile("dec3to8For_tb.vcd");
    $dumpvars(0,dec3to8For_tb);
end

initial begin
    for(integer i = 0; i<8; i++)begin
        en = 0; w = i; #2;
    end

    for(integer i = 0; i<8; i++)begin
        en = 1; w = i; #2;
    end
end
endmodule