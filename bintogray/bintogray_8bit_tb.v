`timescale 1ns / 1ps
module bintogray_8bit_tb();
wire [7:0]gray;
reg [7:0]bin;
bintogray_8bit b1(bin,gray);
initial
begin 
bin=0;
#800 $finish;
end
always #1 bin[0]=~bin[0];
always #2 bin[1]=~bin[1];
always #4 bin[2]=~bin[2];
always #8 bin[3]=~bin[3];
always #16 bin[4]=~bin[4];
always #32 bin[5]=~bin[5];
always #64 bin[6]=~bin[6];
always #128 bin[7]=~bin[7];
endmodule
