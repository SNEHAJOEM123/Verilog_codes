`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2024 11:12:12
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_4_bit_tb();
    parameter N=4;
    wire tcout;
    wire [N-1:0]tsum;
    reg [N-1:0]ta,tb;
    reg tcin;
    ripple_carry_adder #(N) dut(tcout,tsum,ta,tb,tcin);
    
    initial
    begin
        ta=4'd0;tb=4'd3;tcin=0;
        #10ta=4'd8;tb=4'd4;tcin=1;
        #10ta=4'd11;tb=4'd5;tcin=0;
        #10$finish;
    end
endmodule
