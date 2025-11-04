module johnson5bit(clk,reset,Q);
input clk,reset;
output reg [4:0] Q;

always @(posedge clk, posedge reset) begin
    if(reset) Q<= 5'b00000;
    else begin
        Q[4]<=~Q[0];
        for(integer i = 3; i>=0; i--)begin
            Q[i]<=Q[i+1];
        end
    end
end
endmodule