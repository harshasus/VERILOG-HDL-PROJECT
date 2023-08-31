`timescale 1ns / 1ps
module tff1_tb();
wire q,qb;
reg t,clk,rst;
tff1 a1(t,clk,rst,q,qb);
initial
begin
clk=0;
t=0;rst=0;#10;
t=1;rst=1;#10;
t=0;rst=1;#10;
$finish;
end
always #5 clk=~clk;
endmodule
