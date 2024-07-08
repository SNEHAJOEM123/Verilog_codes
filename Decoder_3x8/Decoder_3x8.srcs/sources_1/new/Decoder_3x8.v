`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 10:42:46
// Design Name: 
// Module Name: Decoder_3x8
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


module Decoder_3x8(output Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0,input A2,A1,A0);
wire w1;
not N1(w1,A2);
decoder_2_to_4 D1(Y3,Y2,Y1,Y0,A1,A0,A2);
decoder_2_to_4 D2(Y7,Y6,Y5,Y4,A1,A0,w1);
endmodule
