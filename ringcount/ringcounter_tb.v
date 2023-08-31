`timescale 1ns / 1ps
module ringcounter_tb();
reg clk,rst;
wire [3:0]q;
ringcounter r1(q,clk,rst);
initial
begin
clk=0;
rst=0;
#20 rst=1'b1;
end
always #5 clk=~clk;
endmodule
