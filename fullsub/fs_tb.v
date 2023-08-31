`timescale 1ns / 1ps
module fs_tb();
wire diff,bor;
reg a,b,c;
fs a1(diff,bor,a,b,c);
initial
begin
a=0;
b=0;
c=0;
end
always #20a=~a;
always #10 b=~b;
always #5 c=~c;
endmodule
