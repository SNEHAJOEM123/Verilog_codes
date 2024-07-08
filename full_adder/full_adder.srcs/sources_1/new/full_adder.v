`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 13:26:43
// Design Name: 
// Module Name: full_adder
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


module full_adder(output sum,cout,input a,b,cin);
wire w1,w2,w3;
half_adder HA1(w1,w2,a,b);
half_adder HA2(sum,w3,w1,cin);
or O1(cout,w2,w3);
endmodule
