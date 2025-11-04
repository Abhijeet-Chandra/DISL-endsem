module SRFF(S,R,clk,Q,reset);

input S,R,clk,reset;
output reg Q;

always @(posedge clk, posedge reset) begin
    if(reset) Q<=0;
    else begin
        if(S==0&&R==0) Q<=Q;
        else if(S==0&&R==1) Q<=0;
        else if(S==1&&R==0) Q<=1;
        else if(S==1&&R==1) Q<=1'bx;
    end
end
endmodule