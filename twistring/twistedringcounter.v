`timescale 1ns / 1ps
module twistedringcounter(output [3:0] q, input clk,rst);
reg [3:0]q;
always @(posedge clk)
begin
if(rst)
q<=4'b1000;
else
case (q)
4'b1000: q <= 4'b1100;
4'b1100: q <= 4'b1110;
4'b1110: q <= 4'b1111;
4'b1111: q <= 4'b0111;
4'b0111: q <= 4'b0011;
4'b0011: q <= 4'b0001;
4'b0001: q <= 4'b0000;
default: q <= 4'b0001;
endcase
//q[3]<=~q[0];
//q[2]<=q[3];
//q[1]<=q[2];
//q[0]<=q[1];
end
endmodule
