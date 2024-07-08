`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 21:43:50
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


module decoder_2_to_4(output d3,d2,d1,d0,input i1,i0);
    wire w1,w2;
    not N2(w2,i1);
    not N1(w1,i0);
    and A1(d0,w2,w1);
    and A2(d1,w2,i0);
    and A3(d2,i1,w1);
    and A4(d3,i1,i0);
endmodule
