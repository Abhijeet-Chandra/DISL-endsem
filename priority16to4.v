module priority16to4(w,z,y);

input [15:0] w;
output reg z;
output reg [3:0] y;

always @(*) begin
    y = 4'bx;
    z = 0;
    for (integer i = 0; i<16; i++) begin
        if(w[i]==1)begin
            y = i;
            z = 1;
        end
    end
end
endmodule
