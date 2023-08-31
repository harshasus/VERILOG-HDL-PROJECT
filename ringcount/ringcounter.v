`timescale 1ns / 1ps
module ringcounter(output [3:0] q,input clk,rst);
reg [3:0]q;
always @(posedge clk)
if(rst==0)
q<=4'b1000;
else
begin
q[3]<=q[0];
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
end
endmodule
