module shift6bit(w,clk,Q,reset);

input w,clk,reset;
output reg [5:0]Q;

always @(posedge clk, posedge reset) begin
    if(reset) Q<=6'b000000;
    else begin
        Q[5]<=w;
        for(integer i = 4; i>=0; i--)begin
           Q[i]<=Q[i+1]; 
        end
    end
end

endmodule