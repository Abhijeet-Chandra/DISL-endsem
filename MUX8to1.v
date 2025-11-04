module MUX8to1(w,s,f);

input [0:7] w;
input [2:0] s;
output reg f;

always @(*)begin
    case(s)
    0: f = w[0];
    1: f = w[1];
    2: f = w[2];
    3: f = w[3];
    4: f = w[4];
    5: f = w[5];
    6: f = w[6];
    7: f = w[7];
    endcase
end
endmodule