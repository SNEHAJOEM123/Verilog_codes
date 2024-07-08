`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 10:50:33
// Design Name: 
// Module Name: tb_decoder_3x8
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


module tb_decoder_3x8();
wire Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0;
reg A2,A1,A0;

Decoder_3x8 DUT(Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0,A2,A1,A0);
initial
begin
A2=0;A1=0;A0=0;
#5 A2=0;A1=0;A0=1;
#5 A2=0;A1=1;A0=0;
#5 A2=0;A1=1;A0=1;
#5 A2=1;A1=0;A0=0;
#5 A2=1;A1=0;A0=1;
#5 A2=1;A1=1;A0=0;
#5 A2=1;A1=1;A0=1;
#5 $finish;
end
endmodule
