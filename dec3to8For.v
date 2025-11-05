module dec3to8For(w,en,y);

input [2:0] w;
input en;
output reg [0:7]y;

always @(*) begin
    if (en == 0)
        y = 8'b00000000;
    else begin
        for (integer i = 0; i < 8; i = i + 1) begin
            if (w == i)
                y[i] = 1'b1;
            else
                y[i] = 1'b0;
        end
    end
end
endmodule