`timescale 1ns / 1ps

module deco3_8(output [7:0]y,input [2:0]d,input en);
wire [2:0] nd;
not n1(nd[0],d[0]);
not n2(nd[1],d[1]);
not n3(nd[2],d[2]);
and a1(y[0],nd[2],nd[1],nd[0],en);
and a2(y[1],nd[2],nd[1],d[0],en);
and a3(y[2],nd[2],d[1],nd[0],en);
and a4(y[3],nd[2],d[1],d[0],en);
and a5(y[4],d[2],nd[1],nd[0],en);
and a6(y[5],d[2],nd[1],d[0],en);
and a7(y[6],d[2],d[1],nd[0],en);
and a8(y[7],d[2],d[1],d[0],en);
endmodule


