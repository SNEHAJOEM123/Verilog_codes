module q1_mfg_1(f,a,b,x,y);
output f;
input a,b,x,y;
reg f;
always @(a or b or x or y)
case({x,y})
   2'b00:f=a&b;
   2'b01:f=a|b;
   2'b10:f=~(a|b);
   2'b11:f=~(a&b);
endcase
endmodule   