`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 20:09:02
// Design Name: 
// Module Name: tb_shift_register
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


module tb_shift_register();
reg t_clk=0,t_rst,t_sin;
reg [1:0] t_m;
reg [7:0] t_in;
wire [7:0]t_out;

universal_shift_register DUT(t_out,t_in,t_m,t_sin,t_clk,t_rst);
always #5 t_clk=~t_clk;
initial
begin
t_clk=0;t_rst=0;
#10 t_in=8'b10100101;
t_m=2'b11;
#10 t_sin=0;
#10 t_m=2'b10;
#10 t_m=2'b01;
#10 t_sin=1;
#10 t_m=2'b10;
#10 $finish;
end
endmodule
