`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 10:25:07
// Design Name: 
// Module Name: siso_shift_register
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


module siso_shift_register(output so,input sin,clk,rst);
reg [7:0]out;
always @(posedge clk)
begin
 if(rst)
   out<=8'b0;
 else
   out<={sin,out[7:1]}; 
end
assign so=out[0];
endmodule
