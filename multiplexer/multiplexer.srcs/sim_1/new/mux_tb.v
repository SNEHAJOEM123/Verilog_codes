`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2024 10:04:29
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
wire tb_y;
reg tb_i0,tb_i1,tb_i2,tb_i3,tb_s0,tb_s1;

mux_4x1 dut(tb_y,tb_i0,tb_i1,tb_i2,tb_i3,tb_s1,tb_s0);
initial
begin
tb_s1=0;tb_s0=0;tb_i3=0;tb_i2=0;tb_i1=0;tb_i0=0;
#10
tb_s1=0;tb_s0=0;tb_i3=0;tb_i2=0;tb_i1=0;tb_i0=1;
#10
tb_s1=0;tb_s0=0;tb_i3=0;tb_i2=0;tb_i1=1;tb_i0=0;
#10
tb_s1=0;tb_s0=0;tb_i3=0;tb_i2=0;tb_i1=1;tb_i0=1;
#10
tb_s1=0;tb_s0=0;tb_i3=0;tb_i2=1;tb_i1=0;tb_i0=0;
#10
tb_s1=0;tb_s0=0;tb_i3=0;tb_i2=1;tb_i1=0;tb_i0=1;
#10
tb_s1=0;tb_s0=0;tb_i3=0;tb_i2=1;tb_i1=1;tb_i0=0;
#10
tb_s1=0;tb_s0=1;tb_i3=0;tb_i2=1;tb_i1=1;tb_i0=1;
#10
tb_s1=1;tb_s1=0;tb_i3=1;tb_i2=0;tb_i1=0;tb_i0=0;
#10
tb_s1=0;tb_s0=0;tb_i3=1;tb_i2=0;tb_i1=0;tb_i0=1;
#10
tb_s1=1;tb_s0=0;tb_i3=1;tb_i2=0;tb_i1=1;tb_i0=0;
#10
$finish;
end
endmodule
