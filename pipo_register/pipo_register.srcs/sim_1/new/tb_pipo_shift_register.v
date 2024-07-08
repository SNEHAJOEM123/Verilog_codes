`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 09:42:20
// Design Name: 
// Module Name: tb_pipo_shift_register
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


module tb_pipo_shift_register();
wire [7:0]t_q;
reg [7:0]t_d;
reg t_clk,t_rst;

pipo_shift_register p(t_q,t_d,t_clk,t_rst);
always #5t_clk=~t_clk;

initial
begin
t_d=8'b0;
t_clk=0;t_rst=0;
#10 t_d=8'b10100011;
#10 t_d=8'b11001011;
#10 $finish;

end
endmodule
