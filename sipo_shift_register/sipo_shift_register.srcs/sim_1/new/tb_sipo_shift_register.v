`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 10:05:50
// Design Name: 
// Module Name: tb_sipo_shift_register
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


module tb_sipo_shift_register();
    wire [7:0]t_out;
    reg t_sin,t_rst,t_clk;
    
    sipo_shift_register s(t_out,t_sin,t_clk,t_rst);
    always #5 t_clk=~t_clk;
    
    initial
    begin
        t_clk=0;t_sin=0;t_rst=1;
        #10 t_rst=0;
        #10 t_sin=1;
        #10 t_sin=0;
        #10 $finish;
    end
endmodule
