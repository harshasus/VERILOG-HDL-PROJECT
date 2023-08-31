`timescale 1ns / 1ps
module mod_n(output [size-1:0]q,input clk,rst);
reg [size-1:0]q;
parameter n=10;
parameter size=4;
always @(posedge clk)
begin  
    if (rst)
     begin  
      q <= 0;  
    end 
    else
     begin  
      if (q == n-1)  
        q <= 0;  
      else  
        q <= q + 1;  
    end  
  end  
endmodule  

