`timescale 1ns / 1ps
module dff(input d,clk,rst,output q,qn);
reg q;
always@(posedge clk)
 begin 
 if(rst==1'b0)
 q=1'b0;
 else
 q=d;
 end
 assign qn=~q;
endmodule