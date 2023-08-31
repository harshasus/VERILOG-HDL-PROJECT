`timescale 1ns / 1ps
module lfsr_tb();
parameter n=3;
reg clk,rst;
wire [n-1:0]q;
lfsr l1(clk,rst,q);
always 
begin
clk=1'b0;
#5;
clk=1'b1;
#5;
end
initial
begin
rst=1'b0;
#2;
rst=1'b1;
#10;
end
endmodule
