/*`timescale 1ns / 1ps

module mux8to1_tb();
wire y;
reg [2:0]s;
reg [7:0]i;
mux8to1 a1(y,s,i);
initial
begin
i=0;s=0;
end
always #2 i[0]=~i[0];
always #4 i[1]=~i[1];
always #6 i[2]=~i[2];
always #8 i[3]=~i[3];
always #10 i[4]=~i[4];
always #12 i[5]=~i[5];
always #14 i[6]=~i[6];
always #16 i[7]=~i[7];
always #18 s[0]=~s[0];
always #36 s[1]=~s[1];
always #72 s[2]=~s[2];
endmodule*/
`timescale 1ns / 1ps

module mux_8x1_tb;
    reg [7:0]i;
    reg [2:0]s;
    wire y;
    mux_8x1 aa(i,s,y);
    initial
    begin
        i=8'b00000000;
        s[0]=0;
        s[1]=0;
        s[2]=0;
         #100 i=8'b00100010;
          #100 i=8'b10001111;
          #100 i=8'b01101110;
          #100 i=8'b00111000;
          
        #1500 $finish();
    end
    
    always #100 s[0]=~s[0];
    always #200 s[1]=~s[1];
    always #400 s[2]=~s[2];

endmodule
