`timescale 1ns / 1ps
module mux4_1_tb;
wire  out;
reg  a;
reg  b;
reg  c;
reg  d;
reg s0, s1;
mux4_1 mux1( a,b,c,d,s1,s0,out);
 initial
 begin
 a=1'b0; b=1'b0; c=1'b0; d=1'b0;
 s0=1'b0; s1=1'b0;
 #500 $finish;
 end
always #5 a=~a;
always #10 b=~b;
always #20 c=~c;
always #40 d=~d;
always #160 s0=~s0;
always #80 s1=~s1;
endmodule
