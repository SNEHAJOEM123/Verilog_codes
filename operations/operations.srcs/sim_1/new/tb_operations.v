`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.02.2024 22:19:13
// Design Name: 
// Module Name: tb_operations
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


module tb_operations();
reg in;
wire out;
operations dut(out,in);

initial
begin
in=0;
#10 in=1;
#10 in=0;
#10 in=1;
#3 in=0;
#3 in=1;
#9 in=0;
#10 $finish;
end
endmodule
