`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 11:37:39
// Design Name: 
// Module Name: tb
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


module tb();
reg i0,i1,i2,i3;
wire y1,y0;
encoder_4_to_2 DUT(i3,i2,i1,i0,y1,y0);

initial
begin
  i3=0;i2=0;i1=0;i0=1;
  #5i3=0;i2=0;i1=1;i0=0;
  #5i3=0;i2=1;i1=0;i0=0;
  #5i3=1;i2=0;i1=0;i0=0;
  #5$finish;
end
endmodule
