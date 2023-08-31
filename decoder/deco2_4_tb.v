`timescale 1ns / 1ps
module deco2_4_tb();
wire [3:0]y;
reg [1:0]d;
reg en;
deco2_4 a1(y,d,en);
initial
begin
d=0;
en=0;
#10 en=1;
end

initial 
begin
d[1]=0;d[0]=0;
#30;
d[1]=0;d[0]=1;;
#20;
d[1]=1;d[0]=0;
#20;
d[1]=1;d[0]=1;
#20;
$finish;
end
endmodule

