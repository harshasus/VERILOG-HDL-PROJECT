`timescale 1ns / 1ps
module graycounter_tb();
reg clk,rst;
wire  [3:0]gray,bin;
graycounter g1(clk,rst,gray,bin);
initial
begin
clk=0;
rst=1;
#5
rst=0;
end
always #5 clk=~clk;
endmodule
