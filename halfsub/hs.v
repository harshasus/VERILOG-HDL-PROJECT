`timescale 1ns / 1ps

module hs(diff,bor,a,b);
output diff,bor;
input a,b;
wire na;
not n1(na,a);
xor s1(diff,a,b);
and s2(bor,na,b);
endmodule
