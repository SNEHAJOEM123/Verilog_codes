`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 22:13:30
// Design Name: 
// Module Name: tb_multi_function_gate
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


module tb_multi_function_gate();
reg t_x,t_y,t_a,t_b;
wire t_f;
integer i;
multi_function_gate DUT(t_f,t_x,t_y,t_a,t_b);
initial
begin
for(i=0;i<=4'd15;i=i+1)
begin
  {t_x,t_y,t_a,t_b}=i;
  #5;
end
$finish;
end
endmodule
