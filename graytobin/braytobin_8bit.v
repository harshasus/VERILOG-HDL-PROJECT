`timescale 1ns / 1ps
module graytobin_8bit(input [7:0] gray,output [7:0] bin);
assign bin[7]=gray[7];
assign bin[6]=gray[7]^gray[6];
assign bin[5]=gray[6]^gray[5];
assign bin[4]=gray[5]^gray[4];
assign bin[3]=gray[4]^gray[3];
assign bin[2]=gray[3]^gray[2];
assign bin[1]=gray[2]^gray[1];
assign bin[0]=gray[1]^gray[0];
endmodule
