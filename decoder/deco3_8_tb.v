`timescale 1ns / 1ps

module deco3_8_tb();
wire [7:0]y;
reg [2:0]d;
reg en;
deco3_8 d1(y,d,en);
initial
begin
d=0;en=0;
#10 en=1;
end
initial
begin
d[2]=0;d[1]=0; d[0]=0;
#30;
d[2]=0;d[1]=0; d[0]=1;
#20;
d[2]=0;d[1]=1; d[0]=0;
#20;
d[2]=0;d[1]=1; d[0]=1;
#20;
d[2]=1; d[1]=0; d[0]=0;
#20;
d[2]=1;d[1]=0; d[0]=1;
#20;
d[2]=1;d[1]=1; d[0]=0;
#20;
d[2]=1;d[1]=1; d[0]=1;
#20;
$finish;
end
endmodule
