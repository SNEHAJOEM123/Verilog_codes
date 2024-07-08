`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 21:34:34
// Design Name: 
// Module Name: encoder_4_to_2_dataflow
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


module encoder_4_to_2_dataflow(output d1,d0,input i3,i2,i1,i0);
assign d1=(i3|i2)?1:0;
assign d0=(i1|i3)?1:0;
endmodule
