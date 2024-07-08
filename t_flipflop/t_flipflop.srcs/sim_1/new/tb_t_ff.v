`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 22:32:50
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff();
    wire t_q,t_qb;
    reg t_t,t_rst,t_clk=0;
    
    t_ff DUT(t_q,t_qb,t_t,t_rst,t_clk);
    always #5 t_clk=~t_clk;
    
    initial
    begin
        repeat(3) @(posedge t_clk);
        t_t=1;
        #10 t_rst=1;
        #20 t_rst=0;
        #10 t_t=1;
        #20 t_t=0;
        #10 t_t=1;
        #20 t_t=0;
        #50 $finish;
    end
endmodule
