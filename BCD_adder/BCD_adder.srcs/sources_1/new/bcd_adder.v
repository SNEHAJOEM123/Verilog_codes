`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 15:10:28
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(output reg cout,output reg [3:0]sum,input [3:0]a,b,input cin);

reg [4:0] out;

always @(a,b,cin)
begin
  out=a+b+cin;
  
  if(out>9)
  begin
     out=out+6;
     sum=out[3:0];
     cout=1;
  end
  
  else
  begin
     sum=out[3:0];
     cout=0;
  end
end
endmodule
