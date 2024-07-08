module jk_ff(output reg q, output qbar, input j,k,clk,rst);
assign qbar = ~q;
always@(posedge clk)
begin 
    if(!rst)
    case({j,k})
    2'b00: q <= q; 
    2'b01: q <= 0; 
    2'b10: q <= 1;
    2'b11: q <= ~q; 
    endcase
end
endmodule