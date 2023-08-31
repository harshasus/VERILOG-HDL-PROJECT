`timescale 1ns / 1ps

module demux_1x8_tb;
    wire [7:0]y;
    reg i;
    reg [2:0]s;
    
    demux_1x8 a(y,i,s);
    initial begin
        i=1'b0;
        s[0]=0;
        s[1]=0;
        s[2]=0;
      
    end
    always #50 i=~i;
    always #100 s[0] = ~s[0];
    always #200 s[1] = ~s[1];
    always #400 s[2] = ~s[2];
endmodule
