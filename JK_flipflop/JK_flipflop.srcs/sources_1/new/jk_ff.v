`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.02.2024 22:54:56
// Design Name: 
// Module Name: jk_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jk_ff(output reg q,output qb,input j,k,clk,rst);

always @(posedge clk)
begin
if(rst)
  q<=0;
else
  case({j,k})
  2'd0:q<=q;
  2'd1:q<=0;
  2'd2:q<=1;
  2'd3:q<=~q;
  endcase
end
assign qb=~q;
endmodule
