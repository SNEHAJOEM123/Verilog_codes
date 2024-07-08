module q1_mfg_2(f,a,b,x,y);
output f;
input a,b,x,y;
assign f=(x&~a&~b)|(y&~a&b)|(~x&a&b)|(y&a&~b);
endmodule