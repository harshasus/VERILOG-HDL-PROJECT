`timescale 1ns / 1ps
module tff1(input t,clk,rst,output q,qb);
reg q;
always@(posedge clk or posedge rst)
begin
if(rst==0)
q=1'b0;
else
if(t)
q=q;
else
q=~q;
end
assign qb=~q;
endmodule
