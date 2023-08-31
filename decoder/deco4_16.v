`timescale 1ns / 1ps



module deco4_16(output [15:0] y,input [3:0] d,input en);
wire [3:0]nd;
not n1(nd[0],d[0]);
not n2(nd[1],d[1]);
not n3(nd[2],d[2]);
not n4(nd[3],d[3]);
and d1(y[0],nd[3],nd[2],nd[1],nd[0],en);
and d2(y[1],nd[3],nd[2],nd[1],d[0],en);
and d3(y[2],nd[3],nd[2],d[1],nd[0],en);
and d4(y[3],nd[3],nd[2],d[1],d[0],en);
and d5(y[4],nd[3],d[2],nd[1],nd[0],en);
and d6(y[5],nd[3],d[2],nd[1],d[0],en);
and d7(y[6],nd[3],d[2],d[1],nd[0],en);
and d8(y[7],nd[3],d[2],d[1],d[0],en);
and d9(y[8],d[3],nd[2],nd[1],nd[0],en);
and d10(y[9],d[3],nd[2],nd[1],d[0],en);
and d11(y[10],d[3],nd[2],d[1],nd[0],en);
and d12(y[11],d[3],nd[2],d[1],d[0],en);
and d13(y[12],d[3],d[2],nd[1],nd[0],en);
and d14(y[13],d[3],d[2],nd[1],d[0],en);
and d15(y[14],d[3],d[2],d[1],nd[0],en);
and d16(y[15],d[3],d[2],d[1],d[0],en);
endmodule
