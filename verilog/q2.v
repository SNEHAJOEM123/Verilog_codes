module mux2to1(y,a,b,s);
output y;
input a,b,s;
wire sbar,s_a,s_b;
not(sbar,s);
and(s_a,sbar,a);
and(s_b,s,b);
or(y,s_b,s_a);
endmodule

module mux8to1(y,d,s);
output y;
input [7:0]d;
input [2:0]s;
wire w1,w2,w3,w4,w5,w6;
mux2to1 m1(w1,d[0],d[1],s[0]);
mux2to1 m2(w2,d[2],d[3],s[0]);
mux2to1 m3(w3,d[4],d[5],s[0]);
mux2to1 m4(w4,d[6],d[7],s[0]);
mux2to1 m5(w5,w1,w2,s[1]);
mux2to1 m6(w6,w3,w4,s[1]);
mux2to1 m7(y,w5,w6,s[2]);
endmodule
