`timescale 1ns / 1ps
module deco2_4(y,d,en);
output [3:0]y;
input [1:0]d;
input en;
wire [1:0]nd;
not n1(nd[0],d[0]);
not n2(nd[1],d[1]);
and a1(y[0],nd[1],nd[0],en);
and a2(y[1],nd[1],d[0],en);
and a3(y[2],d[1],nd[0],en);
and  a4(y[3],d[1],d[0],en);
endmodule
