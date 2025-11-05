`include "dec3to8.v"
`timescale 1ns/1ns

module dec3to8_tb();

reg [2:0] w;
reg en;
wire [0:7] y;

dec3to8 dec3to8_ins(w,en,y);

initial begin
    $dumpfile("dec3to8_tb.vcd");
    $dumpvars(0,dec3to8_tb);
end

initial begin
    en = 0; w= 0; #2;
    en = 1;
    w = 0; #2;
    w = 1; #2; 
    w = 2; #2;
    w = 3; #2;
    w = 4; #2;
    w = 5; #2;
    w = 6; #2;
    w = 7; #2;
end
endmodule