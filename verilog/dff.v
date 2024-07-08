module d_ff(output reg q, output qbar, input d, clk);
assign qbar = ~q;
always@(posedge clk)
q<=(d==1)?1:0;
endmodule