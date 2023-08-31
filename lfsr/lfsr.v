`timescale 1ns / 1ps
module lfsr(input clk,rst,output [n-1:0] q);
parameter n=3;
reg [n-1:0]q,qnxt;
wire shift;
always @(posedge clk or negedge rst)
begin
if(~rst)
q<=1;
else
q<=qnxt;
end
always @(shift,q)
qnxt={shift,q[n-1:0]};
assign shift=q[2]^q[1];
endmodule
