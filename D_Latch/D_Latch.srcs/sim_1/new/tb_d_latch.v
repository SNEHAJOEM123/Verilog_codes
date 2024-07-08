`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 19:32:51
// Design Name: 
// Module Name: tb_d_latch
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


module tb_d_latch();
    wire t_q,t_qb;
    reg t_d,t_en=0,t_rst;
    
    d_latch DUT(t_q,t_qb,t_d,t_en,t_rst);
    
    always #10 t_en=~t_en;
    
    initial
    begin
        #10 t_rst=1;
        #5 t_d=0;
        #15 t_rst=0;
        #10 t_d=1;
        #15 t_d=0;
        #10 t_d=1;
        #10 t_d=0;
        #5 t_d=1;
        #15 t_d=0;
        #25 t_d=1;
        #10 $finish;
    end
endmodule
