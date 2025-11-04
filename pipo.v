module pipo(D,clk,Q,reset);
parameter n = 4;

input [3:0] D;
input clk,reset;
output reg[3:0] Q;

always @(posedge clk, posedge reset) begin
    if(reset) Q<= 4'b0000;
    else Q<=D;
end
endmodule