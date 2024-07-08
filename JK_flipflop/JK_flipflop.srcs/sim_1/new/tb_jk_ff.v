`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.02.2024 23:18:05
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff();
wire q,qb;
reg j,k,clk=0,rst;

jk_ff DUT(q,qb,j,k,clk,rst);

always #5 clk=~clk;

initial
begin
repeat(2) @(posedge clk);
rst=1;
#10 j=0;k=0;
#10 rst=0;
#10 j=0;k=1;
#10 j=1;k=0;
#10 j=1;k=1;
#10 $finish;
end
endmodule
