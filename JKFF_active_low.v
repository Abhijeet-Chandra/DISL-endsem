module JKFF_active_low(J,K,clk,Q,reset);
input J,K,clk,reset;
output reg Q;

always @(posedge clk, negedge reset)begin
    if(!reset) Q<=0;
    else begin
        if(J==0&&K==0) Q<=Q;
        else if(J==0&&K==1) Q<=0;
        else if(J==1&&K==0) Q<=1;
        else if(J==1&&K==1) Q<=~Q;
    end
end
endmodule