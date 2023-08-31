`timescale 1ns / 1ns
module jkff_tb();
reg j,k,clk;
wire q,qn;
jkff a1(j,k,clk,q,qn);
initial begin
 clk=0; j=0; k=0;
 end
initial
begin
clk=1; j=0; k=0; #10;
clk=0; j=0; k=1; #10;
clk=1; j=0; k=1; #10;
clk=0; j=1; k=0; #10;
clk=1; j=1; k=0; #10;
clk=0; j=1; k=1; #10;
clk=1; j=1; k=1; #10;
$finish;
end
endmodule
