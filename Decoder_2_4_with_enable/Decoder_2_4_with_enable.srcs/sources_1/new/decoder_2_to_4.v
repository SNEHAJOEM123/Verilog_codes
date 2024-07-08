`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 10:21:47
// Design Name: 
// Module Name: decoder_2_to_4
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


module decoder_2_to_4(output D3,D2,D1,D0,input A,B,En);
wire w1,w2,w3;
not N1(w1,A);
not N2(w2,B);
not N3(w3,En);
and A1(D0,w1,w2,w3);
and A2(D1,w1,B,w3);
and A3(D2,A,w2,w3);
and A4(D3,A,B,w3);
endmodule
