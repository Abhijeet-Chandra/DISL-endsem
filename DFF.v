//+ve edge, async active high reset
module DFF(D,clk,Q,reset,preset);
input D,clk,reset,preset;
output reg Q;

always @(posedge clk, posedge reset, posedge preset) begin
    if(reset) Q<=0;
    else if(preset) Q<=1'b1;
    else begin
        Q<=D;
    end
end
endmodule