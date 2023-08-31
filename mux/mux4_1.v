`timescale 1ns / 1ps
module mux4_1(
    input a,b,c,d,s1,s0,
    output y
    );
 reg out;

always @ (*)
begin

case ({s0,s1})
2'b00 : out = a;
2'b01 : out = b;
2'b10 : out = c;
2'b11 : out = d;
default:out=1'b0;
endcase
end
endmodule
