`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 22:02:38
// Design Name: 
// Module Name: tb_decoder_2_to_4
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


module tb_decoder_2_to_4();
    reg tb_i0,tb_i1;
    wire tb_d0,tb_d1,tb_d2,tb_d3;
    decoder_2_to_4 DUT(tb_d3,tb_d2,tb_d1,tb_d0,tb_i1,tb_i0);
    initial
    begin
        tb_i1=0;tb_i0=0;
        #5
        tb_i1=0;tb_i0=1;
        #5
        tb_i1=1;tb_i0=0;
        #5
        tb_i1=1;tb_i0=1;
        #5
        $finish;
        end
endmodule
