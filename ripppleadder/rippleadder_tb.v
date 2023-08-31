`timescale 1ns / 1ps
module ripple_carry_adder_tb;
    wire [3:0]sum;
    wire cout;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    rippleadder ra(sum,cout,a,b,cin);

    initial begin
       	a = 4'b0011;b = 4'b0100;cin=1'b0;#100;
		 a = 4'b1011;b = 4'b0010;cin=1'b0;#100;
		a = 4'b1100;b = 4'b1100;cin=1'b0;#100;
	    a = 4'b0011;b = 4'b0111;cin=1'b1;#100;
        end
endmodule