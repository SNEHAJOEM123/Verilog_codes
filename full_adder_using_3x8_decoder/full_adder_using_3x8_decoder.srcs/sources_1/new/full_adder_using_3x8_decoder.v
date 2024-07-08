`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 11:06:24
// Design Name: 
// Module Name: full_adder_using_3x8_decoder
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


module full_adder_using_3x8_decoder(output Sum,Cy,input x,y,z);
wire w7,w6,w5,w4,w3,w2,w1,w0;
Decoder_3x8 D1(w7,w6,w5,w4,w3,w2,w1,w0,x,y,z);
or O1(Sum,w1,w2,w4,w7);
or O2(Cy,w3,w5,w6,w7);
endmodule
