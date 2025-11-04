//+ve edge, async active high reset
module DFF(D,clk,Q,reset);
input D,clk,reset;
output reg Q;

always @(posedge clk, posedge reset) begin
    if(reset) Q<=0;
    else begin
        Q<=D;
    end
end
endmodule