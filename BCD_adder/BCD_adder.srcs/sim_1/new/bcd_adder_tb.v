`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 15:22:18
// Design Name: 
// Module Name: bcd_adder_tb
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


module bcd_adder_tb();
wire [3:0]sum;
wire cout;
reg [3:0]a,b;
reg cin;

bcd_adder dut(cout,sum,a,b,cin);

initial
begin
  a=8;b=2;cin=0;
  #10a=1;b=2;cin=0;
  #10a=9;b=2;cin=0;
  #10$finish;
end

endmodule
