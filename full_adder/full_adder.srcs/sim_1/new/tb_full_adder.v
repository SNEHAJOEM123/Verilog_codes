`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 13:45:13
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();
reg t_a,t_b,t_cin;
wire t_sum,t_cout;
full_adder DUT(t_sum,t_cout,t_a,t_b,t_cin);
initial
begin
t_a=0;t_b=0;t_cin=0;
#5
t_a=0;t_b=0;t_cin=1;
#5
t_a=0;t_b=1;t_cin=0;
#5
t_a=0;t_b=1;t_cin=1;
#5
t_a=1;t_b=0;t_cin=0;
#5
t_a=1;t_b=0;t_cin=1;
#5
t_a=1;t_b=1;t_cin=0;
#5
t_a=1;t_b=1;t_cin=1;
#5
$finish;
end
endmodule
