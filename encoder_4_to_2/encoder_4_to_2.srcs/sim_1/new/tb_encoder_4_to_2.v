`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 23:47:05
// Design Name: 
// Module Name: tb_encoder_4_to_2
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


module tb_encoder_4_to_2();
reg tb_i3,tb_i2,tb_i1,tb_i0;
wire tb_d0,tb_d1;
encoder_4_to_2 DUT(tb_d1,tb_d0,tb_i3,tb_i2,tb_i1,tb_i0);
initial
begin
tb_i3=0;tb_i2=0;tb_i1=0;tb_i0=1;
#5
tb_i3=0;tb_i2=0;tb_i1=1;tb_i0=0;
#5
tb_i3=0;tb_i2=1;tb_i1=0;tb_i0=0;
#5
tb_i3=1;tb_i2=0;tb_i1=0;tb_i0=0;
#5
$finish;
end
endmodule
