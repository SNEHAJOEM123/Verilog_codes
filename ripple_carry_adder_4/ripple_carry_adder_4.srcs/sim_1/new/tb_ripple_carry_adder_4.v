`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 14:39:26
// Design Name: 
// Module Name: tb_ripple_carry_adder_4
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


module tb_ripple_carry_adder_4();
reg [3:0]ta,tb;
reg tcin;
wire [3:0]tsum;
wire tcout;
integer i,j,k;
ripple_carry_adder_4 DUT(tsum,tcout,ta,tb,tcin);
initial
begin
for(k=0;k<=1'd1;k=k+1)
begin
    for(i=0;i<=4'd15;i=i+1)
      begin
      for(j=0;j<=4'd15;j=j+1)
      begin
         ta=i;
         tb=j;
         tcin=k;
         #50;
      end
    end
end
end
endmodule
