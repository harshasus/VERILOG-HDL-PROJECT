`timescale 1ns / 1ps
module fad_tb();
wire sum,cout;
reg a,b,cin;
fad a1(a,b,cin,sum,cout);
initial
begin
a=0;
b=0;
cin=0;
end
always #20 a=~a;
always #10 b=~b;
always #5 cin=~cin;
endmodule
