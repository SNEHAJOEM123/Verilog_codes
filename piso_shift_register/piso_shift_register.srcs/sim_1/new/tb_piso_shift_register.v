`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 11:25:47
// Design Name: 
// Module Name: tb_piso_shift_register
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


module tb_piso_shift_register();
wire t_so;
reg [7:0]t_in;
reg t_clk,t_rst;

piso_shift_register dut(t_so,t_in,t_clk,t_rst);
always #5 t_clk=~t_clk;

initial
begin
t_clk=0;t_rst=1;
#10 t_rst=0;
#10 t_in=8'b10011011;
#10 t_in=8'b10111000;
#15 t_in=8'b00111001;
#20 $finish;
end

endmodule
