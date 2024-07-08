`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 11:12:32
// Design Name: 
// Module Name: piso_shift_register
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


module piso_shift_register(output so,input [7:0]in,input clk,rst);
reg [7:0]out;
always @(posedge clk)
begin
if(rst)
out<=8'b0;
else
out<=in;
end
assign so=out[0];
endmodule
