`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 09:38:29
// Design Name: 
// Module Name: pipo_shift_register
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


module pipo_shift_register(output reg [7:0]q,input [7:0]d,input clk,rst);
always @(posedge clk)
begin
if(rst)
  q<=8'b0;
else
  q<=d; 
end

endmodule
