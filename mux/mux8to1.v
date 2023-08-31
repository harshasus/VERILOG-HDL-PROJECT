/*`timescale 1ns / 1ps
module mux8to1(y,s,i);
output y;
input[2:0]s;
input[7:0]i;
wire[2:0]ns;
wire[7:0]w;

not g1(ns[0],s[0]);
not g2(ns[1],s[1]);
not g3(ns[2],s[2]);

and g4(w[0],i[0],ns[2],ns[1],ns[0]);
and g5(w[1],i[1],ns[2],ns[1],s[0]);
and g6(w[2],i[2],ns[2],s[1],ns[0]);
and g7(w[3],i[3],ns[2],s[1],s[0]);
and g8(w[4],i[4],s[2],ns[1],ns[0]);
and g9(w[5],i[5],s[2],ns[1],s[0]);
and g10(w[6],i[6],s[2],s[1],ns[0]);
and g11(w[7],i[7],s[2],s[1],s[0]);

or  g12(y,w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7]);

endmodule*/
`timescale 1ns / 1ps

module mux_8x1(
    input [7:0]i , [2:0] s,
    output y
    );
wire w1,w2,w3,a,b,c,d,e,f,g,h;

not n1(w1,s[2]),
    n2(w2,s[1]),
    n3(w3,s[0]);
and a1(a,w1,w2,w3,i[0]),
    a2(b,w1,w2,s[0],i[1]),
    a3(c,w1,s[1],w3,i[2]),
    a4(d,w1,s[1],s[0],i[3]),
    a5(e,s[2],w2,w3,i[4]),
    a6(f,s[2],w2,s[0],i[5]),
    a7(g,s[2],s[1],w3,i[6]),
    a8(h,s[2],s[1],s[0],i[7]);
    
or o1(y,a,b,c,d,e,f,g,h);
endmodule