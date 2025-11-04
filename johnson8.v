module johnson8(clk,reset,Q,T);
input clk, reset;
output reg [3:0] Q;
output [7:0]T;

always @(posedge clk, posedge reset) begin
    if(reset) Q<=4'b0000;
    else begin
        Q[3]<=~Q[0];
        for(integer i = 2; i>=0; i--)begin
            Q[i]<=Q[i+1];
        end        
    end
end

assign T[0] = ~Q[3]&~Q[2]&~Q[1]&~Q[0];
assign T[1] = Q[3]&~Q[2]&~Q[1]&~Q[0];
assign T[2] = Q[3]&Q[2]&~Q[1]&~Q[0];
assign T[3] = Q[3]&Q[2]&Q[1]&~Q[0];
assign T[4] = Q[3]&Q[2]&Q[1]&Q[0];
assign T[5] = ~Q[3]&Q[2]&Q[1]&Q[0];
assign T[6] = ~Q[3]&~Q[2]&Q[1]&Q[0];
assign T[7] = ~Q[3]&~Q[2]&~Q[1]&Q[0];
endmodule