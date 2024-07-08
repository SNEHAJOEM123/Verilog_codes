`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 14:25:05
// Design Name: 
// Module Name: ripple_carry_adder_4
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


module ripple_carry_adder_4(output [3:0]sum,output cout,input [3:0]a,b,input cin);
wire w1,w2,w3;
full_adder FA0(sum[0],w1,a[0],b[0],cin);
full_adder FA1(sum[1],w2,a[1],b[1],w1);
full_adder FA2(sum[2],w3,a[2],b[2],w2);
full_adder FA3(sum[3],cout,a[3],b[3],w3);
endmodule
