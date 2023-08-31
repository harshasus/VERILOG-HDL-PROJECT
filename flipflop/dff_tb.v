`timescale 1ns / 1ps
module dff_tb();
reg d,clk,rst;
wire q,qn;

dff a1(d,clk,rst,q,qn);
 initial
 begin
 d=1'b0;
 clk=1'b0;
 rst=1'b0;
 #10 rst=1'b1;
 end
 always #10 clk=~clk;
 always #20 d=~d;
endmodule
