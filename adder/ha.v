`timescale 1ns / 1ps

module ha(input a,b,output sum,carry);
xor s1(sum,a,b);
and s2(carry,a,b);
endmodule
