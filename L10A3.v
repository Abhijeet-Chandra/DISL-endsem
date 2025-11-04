module L10A3(A,Y,clk,reset);

input [3:0]A;
input clk,reset;
output reg [3:0]Y;
reg [1:0] counter;

always@(posedge clk, posedge reset)begin
    if(reset) begin
        Y <= 4'b0000;
        counter <= 2'b00;
    end

    else begin
        case(counter)
        2'b01: begin
            Y[3] <= A[2];
            Y[2] <= A[1];
            Y[1] <= A[0];
            Y[0] <= A[3];
        end
        2'b10: begin
            Y[3] <= A[1];
            Y[2] <= A[0];
            Y[1] <= A[3];
            Y[0] <= A[2];
        end
        2'b11: begin
            Y[3] <= A[0];
            Y[2] <= A[3];
            Y[1] <= A[2];
            Y[0] <= A[1];
        end
        2'b00: begin
            Y <= ~A;
        end
    endcase
    counter <= counter + 1;
    end
end
endmodule