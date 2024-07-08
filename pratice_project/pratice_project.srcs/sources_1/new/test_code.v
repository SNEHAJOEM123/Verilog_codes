`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 11:33:37
// Design Name: 
// Module Name: test_code
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


module encoder_4_to_2(input i3,i2,i1,i0,output y1,y0);
or O1(y0,i1,i3);
or O2(y1,i3,i2);
endmodule
