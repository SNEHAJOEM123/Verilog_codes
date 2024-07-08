`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2024 12:59:47
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


module ripple_carry_adder_tb();
    parameter N=8;
    wire tcout;
    wire [N-1:0]tsum;
    reg [N-1:0]ta,tb;
    reg tcin;
    ripple_carry_adder #(8) dut(tcout,tsum,ta,tb,tcin);
    initial
    begin
        ta=8'd64;tb=8'd120;tcin=0;
        #10ta=8'd90;tb=8'd20;tcin=1;
        #10ta=8'd100;tb=8'd200;tcin=0;
        #10$finish;
    end
endmodule
