`timescale 1ns / 1ps
module nbitupdown(input clk,rst,switch,output[n-1:0]q);
parameter n=8;
reg[n-1:0]q;
always @(posedge clk or posedge rst)
begin
if(rst==1)
q<=0;
else 
  if(switch==1)
    if(q==(n-1))
        q<=0;
     else
        q<=q+1;
  else
  if(q==0)   
        q<=(n-1);
      else
         q<=q-1;
end
endmodule
