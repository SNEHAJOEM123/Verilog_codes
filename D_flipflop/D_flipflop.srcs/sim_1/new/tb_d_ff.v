`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 00:00:03
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff();
    wire t_q,t_qb;
    reg t_d,t_clk=0,t_rst;
    
    d_ff DUT(t_q,t_qb,t_d,t_clk,t_rst);
    always #5 t_clk=~t_clk;
    
    initial
    begin
        repeat(2) @(posedge t_clk);
         t_rst=1;
        #5 t_d=1;
        #5 t_rst=0;
        #5 t_d=1;
        #10 t_d=0;
        #5 t_d=1;
        #10 t_d=0;
        #5 t_d=1;
        #5 t_d=1;
        #5 $finish;
    end

endmodule
