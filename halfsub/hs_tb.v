`timescale 1ns / 1ps
module hs_tb();
wire diff,bor;
reg a,b;
hs n1(diff,bor,a,b);
initial
begin
a=0;
b=0;
end
always #20 a=~a;
always #10 b=~b;
endmodule
