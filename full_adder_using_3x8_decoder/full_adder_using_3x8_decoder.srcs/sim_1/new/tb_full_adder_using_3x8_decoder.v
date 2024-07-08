`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 11:14:23
// Design Name: 
// Module Name: tb_full_adder_using_3x8_decoder
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


module tb_full_adder_using_3x8_decoder();
wire Sum,Cy;
reg x,y,z;

full_adder_using_3x8_decoder DUT(Sum,Cy,x,y,z);

initial 
begin
x=0;y=0;z=0;
#5 x=0;y=0;z=1;
#5 x=0;y=1;z=0;
#5 x=0;y=1;z=1;
#5 x=1;y=0;z=0;
#5 x=1;y=0;z=1;
#5 x=1;y=1;z=0;
#5 x=1;y=1;z=1;
#5 $finish;
end
endmodule
