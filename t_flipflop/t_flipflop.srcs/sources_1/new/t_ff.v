`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 22:27:32
// Design Name: 
// Module Name: t_ff
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


module t_ff(output reg q,output qb,input t,rst,clk);
always @(posedge clk)
begin
if(rst)
q<=0;

else
begin
if(t)
q<=~q;
else
q<=q;
end

end
assign qb=~q;
endmodule
