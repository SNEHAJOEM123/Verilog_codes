`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 23:21:24
// Design Name: 
// Module Name: encoder_4_to_2
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


module encoder_4_to_2(output d1,d0,input i3,i2,i1,i0);
or O1(d1,i3,i2);
or O2(d0,i3,i1);
endmodule
