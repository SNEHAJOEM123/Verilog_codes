`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 19:56:43
// Design Name: 
// Module Name: decoder_2_to_4_dataflow
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


module decoder_2_to_4_dataflow(output d3,d2,d1,d0,input i1,i0);
assign d3=(i1&i0)?1:0;
assign d2=(i1&~i0)?1:0;
assign d1=(~i1&i0)?1:0;
assign d0=(~i1&~i0)?1:0;
endmodule
