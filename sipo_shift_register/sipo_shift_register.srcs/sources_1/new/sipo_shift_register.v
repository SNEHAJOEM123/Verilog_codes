`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 10:00:30
// Design Name: 
// Module Name: sipo_shift_register
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


module sipo_shift_register(output reg [7:0]out,input sin,clk,rst);
    always @(posedge clk)
    begin
         if(rst)
           out<=8'b0;
         else
           out<={sin,out[7:1]}; 
    end
endmodule
