`timescale 1ns / 1ps
module graycounter (input clk,rst,output  [3:0]gray,bin);
reg [3:0]bin;
always @(posedge clk or posedge rst) 
    begin
        if (rst)
            bin <= 4'b0000;
        else
            bin <= bin + 1;
    end
assign gray[3]=bin[3];
assign gray[2]=bin[3]^bin[2];
assign gray[1]=bin[2]^bin[1];
assign gray[0]=bin[1]^bin[0];
endmodule


