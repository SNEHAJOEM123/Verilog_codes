`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 16:33:51
// Design Name: 
// Module Name: mux_4_to_1_tb
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


module mux_4_to_1_tb();
reg i3,i2,i1,i0,s1,s0;
wire y;

mux_4_to_1 dut(y,i3,i2,i1,i0,s1,s0);

initial
begin
  s1=0;s0=0;i0=1;i1=0;i2=0;i3=0;
  #10s1=0;s0=1;i0=1;i1=0;i2=1;i3=1;
  #10$finish;
  
end
endmodule
