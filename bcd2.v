`include "mod10.v"
module bcd2(clk,reset,ones,tens);
input clk, reset;
output [3:0] tens, ones;
wire carry;

mod10 ones_counter(clk,ones,reset);

assign carry = (ones == 4'b1001);

mod10 tens_counter(carry,tens,reset);

endmodule
