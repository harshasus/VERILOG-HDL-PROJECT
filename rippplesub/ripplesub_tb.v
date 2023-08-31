`timescale 1ns / 1ps
module ripplesub_tb();
 wire [3:0] diff;
    wire bor;
    reg [3:0] a;
    reg [3:0] b;
    reg c;
ripplesub rs(diff,bor,a,b,c);

    initial begin
       	a = 4'b0011;b = 4'b0100;c=1'b0;#100;
		 a = 4'b1011;b = 4'b0010;c=1'b0;#100;
		a = 4'b1100;b = 4'b1100;c=1'b0;#100;
	    a = 4'b0011;b = 4'b0111;c=1'b1;#100;
	    $finish;
        end
endmodule
