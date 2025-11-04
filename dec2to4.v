module dec2to4(w,en,y);
input [1:0] w;
input en;
output reg[0:3] y;

always @(*)begin
    if(en==0) y = 4'b0000;
    else begin
        if(w==0) y = 4'b1000;
        else if(w==1) y = 4'b0100;
        else if(w==2) y = 4'b0010;
        else if(w==3) y = 4'b0001;
    end
end
endmodule