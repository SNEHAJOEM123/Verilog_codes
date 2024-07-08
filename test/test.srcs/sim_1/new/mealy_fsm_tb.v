`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 18:47:47
// Design Name: 
// Module Name: mealy_fsm_tb
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


module mealy_fsm_tb();
   wire y;
   reg in,clk=1,rst;
   
   mealy_fsm dut(y,in,clk,rst);
   
   always #5 clk=~clk;
   
   initial
   begin
      rst=1;
      #5rst=0;
      #2in=0;
      #13in=0;
      #10in=1;
      #10in=0;
      #10in=1;
      #10in=1;
      #10in=1;
      #10in=1;
      #10in=0;
      #10in=1;
      #10in=0;
      #10in=0;
      #10in=0;
      #10in=1;
      #10$finish;
      
   end
   
endmodule
