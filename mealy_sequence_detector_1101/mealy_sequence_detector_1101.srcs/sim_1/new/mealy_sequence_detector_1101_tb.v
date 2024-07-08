`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 20:54:43
// Design Name: 
// Module Name: mealy_sequence_detector_1101_tb
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


module mealy_sequence_detector_1101_tb();
    wire ty;
    reg tin,tclk=0,trst;
    
    mealy_sequence_detector_1101 dut(ty,tin,tclk,trst);
    
    always #5 tclk=~tclk;
    
    initial
    begin
      trst=1;
      #15trst=0;
      #15tin=0;
      #10tin=1;
      #10tin=1;
      #10tin=0;
      #10tin=1;
      #10tin=1;
      #10tin=0;
      #10tin=1;
      #10tin=0;
      #20$finish;
      
    end
endmodule
