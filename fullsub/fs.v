`timescale 1ns / 1ps
module fs(output diff,bor,input a,b,c);
wire na,d1,b1,b2,b3;
xor a1(d1,a,b);
xor a2(diff,d1,c);
not n1(na,a);
or a3(b1,na,b);
and a4(b2,b1,c);
and a5(b3,na,b);
or a6(bor,b2,b3);
endmodule

