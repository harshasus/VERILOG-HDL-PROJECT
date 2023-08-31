`timescale 1ns / 1ps
module twistedringcounter_tb();
wire [3:0] q;
reg clk,rst;
twistedringcounter a1 (q,clk,rst);
initial
begin
clk=0;
rst=1;
#20 rst=1'b0;
end
always #5 clk=~clk;
endmodule
