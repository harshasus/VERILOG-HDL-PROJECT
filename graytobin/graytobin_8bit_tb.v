`timescale 1ns / 1ps
module graytobin_8bit_tb();
wire [7:0]bin;
reg [7:0]gray;
graytobin_8bit g1(gray,bin);
initial
begin
gray=0;
#800 $finish;
end
always #1 gray[0]=~gray[0];
always #2 gray[1]=~gray[1];
always #4 gray[2]=~gray[2];
always #8 gray[3]=~gray[3];
always #16 gray[4]=~gray[4];
always #32 gray[5]=~gray[5];
always #64 gray[6]=~gray[6];
always #128 gray[7]=~gray[7];
endmodule
