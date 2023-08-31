`timescale 1ns / 1ps

module ripplesub(output [3:0] diff,output bor,input [3:0] a,b,input c);
    wire [2:0] d;
    fs a1(diff[0], d[0], a[0], b[0], c);
    fs a2(diff[1], d[1], a[1], b[1], d[0]);
    fs a3(diff[2], d[2], a[2], b[2], d[1]);
    fs a4(diff[3], bor, a[3], b[3], d[2]);
endmodule

module fs(output diff,bor,input a,b,c);
wire na,d1,nd1,b1,b2;
xor a1(d1,a,b);
xor a2(diff,d1,c);
not n1(na,a);
not n2(nd1,d1);
and a3(b1,na,b);
and a4(b2,nd1,c);
or a5(bor,b1,b2);
endmodule