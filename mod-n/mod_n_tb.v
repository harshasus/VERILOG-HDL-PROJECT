`timescale 1ns / 1ps
module mod_n_tb();
parameter n=10;
parameter size=4;
wire [size-1:0]q;
reg clk,rst;
mod_n m1(q,clk,rst);
always #5 clk = ~clk;
  initial 
  begin
    clk = 0;
    rst = 0;
    #10 rst = 1;
    #10 rst = 0;
    repeat (20) 
    begin
      #10;
    end
  $finish;
  end
endmodule
