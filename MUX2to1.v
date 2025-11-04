module MUX2to1(w,s0,f);
input [0:1] w;
input s0;
output reg f;

always @(*) begin
    if(s0==0) f = w[0];
    else if(s0==1) f = w[1];
end
endmodule