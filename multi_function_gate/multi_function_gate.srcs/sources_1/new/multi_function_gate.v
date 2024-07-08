`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 22:06:01
// Design Name: 
// Module Name: multi_function_gate
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


module multi_function_gate(output f,input x,y,a,b);
wire w1,w2,w3,w4,w5,w6,w7,w8;
not N1(w1,x);
not N2(w2,y);
not N3(w3,a);
not N4(w4,b);
and A1(w5,x,w3,w4);
and A2(w6,w1,a,b);
xor X1(w7,a,b);
and A3(w8,y,w7);
or O1(f,w5,w6,w8);
endmodule
