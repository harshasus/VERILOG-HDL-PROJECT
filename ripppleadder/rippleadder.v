

`timescale 1ns / 1ps

module rippleadder(
    output [3:0] sum,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
);
    wire [2:0] c;
    fa adder1(sum[0], c[0], a[0], b[0], cin);
    fa adder2(sum[1], c[1], a[1], b[1], c[0]);
    fa adder3(sum[2], c[2], a[2], b[2], c[1]);
    fa adder4(sum[3], cout, a[3], b[3], c[2]);
endmodule

module fa(
    output sum, carry,
    input a, b, Cout
);
    assign sum = a ^ b ^ Cout;
    assign carry = (a & b) | (b & Cout) | (Cout & a);
endmodule















































/*module rippleadder(output [3:0] s,output cout,input [3:0] a,b,input cin);
 wire [2:0] c;
 fa a1(s[0], c[0], a[0], b[0], cin);
 fa a2(s[1], c[1], a[1], b[1], c[0]);
 fa a3(s[2], c[2], a[2], b[2], c[1]);
fa a4(s[3], cout, a[3], b[3], c[2]);
endmodule
module fa(input a,b,cin,output s,cout);
wire s1,c1,c2;
xor(s1,a,b);
xor(s,s1,cin);
and(c1,a,b);
and(c2,s1,cin);
or(cout,c1,c2);
endmodule
*/