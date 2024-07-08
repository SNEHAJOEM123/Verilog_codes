`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 08:10:04
// Design Name: 
// Module Name: waves
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


module make_waves;
integer a, b, c, d;
initial begin
a = 0; b = 1; c = 2; d = 0;
#1 a = 1; #3 b = 2; #2 c = b;
end

always @(a, b, c)
d <= #3 a + b + c;

initial
begin
#10 $finish;
end
endmodule