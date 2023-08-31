`timescale 1ns / 1ps
module comp4(input [3:0] a,[3:0]b,output altb,agtb,aeqb);
assign altb=(a<b);
assign agtb=(a>b);
assign aeqb=(a==b);
endmodule
