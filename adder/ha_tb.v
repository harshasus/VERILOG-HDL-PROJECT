`timescale 1ns / 1ps
module ha_tb();
wire sum,carry;
reg a,b;
ha a1(a,b,sum,carry);
initial 
begin
a=0;
b=0;
end 
always #20 a=~a;
always #10 b=~b;
endmodule
