`timescale 1ns / 1ps
module priencode8to3_tb();
wire [2:0]out;
reg [7:0]in;
reg en;
priencoder8to3 p1(en,in,out);
initial
begin
en=0;
in=0;
#10 en=1;
end
initial
begin
in=8'b00000001;
#20;
in=8'b0000001x;
#10;
in=8'b000001xx;
#10;
in=8'b00001xxx;
#10;
in=8'b0001xxxx;
#10;
in=8'b001xxxxx;
#10;
in=8'b01xxxxxx;
#10;
in=8'b1xxxxxxx;
#10;
$finish;
end
endmodule
