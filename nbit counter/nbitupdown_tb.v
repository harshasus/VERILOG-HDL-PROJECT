`timescale 1ns / 1ps
module nbitupdown_tb();
reg clk,rst,switch;
wire [n-1:0]q;
parameter n=8;
nbitupdown n1(clk,rst,switch,q);
initial
begin 
clk = 0;
rst=0;
switch=0;
end
always #5 clk = ~clk;
always #100 rst=~rst;
always #300 switch=~switch;
endmodule
