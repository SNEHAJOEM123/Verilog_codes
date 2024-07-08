`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 10:29:55
// Design Name: 
// Module Name: tb_siso_shift_register
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


module tb_siso_shift_register();
    wire t_so;
    reg t_sin,t_rst,t_clk;
    
    siso_shift_register s(t_so,t_sin,t_clk,t_rst);
    always #5 t_clk=~t_clk;
    
    initial
    begin
        t_clk=0;t_sin=1;t_rst=1;
        #10 t_rst=0;
        #10 t_sin=0;
        #10 t_sin=1;
        #100 $finish;
    end
endmodule
