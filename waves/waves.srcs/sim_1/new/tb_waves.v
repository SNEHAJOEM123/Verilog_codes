`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 08:12:57
// Design Name: 
// Module Name: tb_waves
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


module tb_waves();
integer a, b, c, d;
make_waves dut();
initial begin
a = 0; b = 1; c = 2; d = 0;
#1 a = 1; #3 b = 2; #2 c = b;
end
endmodule
