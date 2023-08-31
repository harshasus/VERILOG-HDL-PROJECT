`timescale 1ns / 1ps
module comp4_tb();
wire altb,agtb,aeqb;
reg [3:0]a;
reg [3:0]b;
comp4 a1(a,b,altb,agtb,aeqb);

initial
begin
a=0;b=0;
end
always #40 a[0]=~a[0];
always #80 a[1]=~a[1];
always #160 a[2]=~a[2];
always #320 a[3]=~a[3];

always #30 b[0]=~b[0];
always #60 b[1]=~b[1];
always #120 b[2]=~b[2];
always #240 b[3]=~b[3];
endmodule
