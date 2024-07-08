`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 09:17:15
// Design Name: 
// Module Name: mealy_overlapping_1011_sequence_detector_tb
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


module mealy_overlapping_1011_sequence_detector_tb();
wire ty;
    reg tin,tclk=0,trst;
    
    mealy_overlapping_1011_sequence_detector dut(ty,tin,tclk,trst);
    
    always #5 tclk=~tclk;
    
    initial
    begin
      trst=1;
      #15trst=0;
      #12tin=0;
      #10tin=0;
      #10tin=1;
      #10tin=0;
      #12tin=1;
      #10tin=1;
      #10tin=0;
      #10tin=1;
      #12tin=1;
      #10tin=0;
      #10$finish;
      
    end
endmodule
