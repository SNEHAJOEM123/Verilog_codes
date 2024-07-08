`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 00:17:11
// Design Name: 
// Module Name: up_counter
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


module up_decade_counter(output reg [3:0]count,input rst,clock);
  
always @( posedge clock)
    begin
      if(rst) 
        count<=4'd0;
      
      else 
      begin
    	  if ( count>=4'd0 && count<4'd9)
      	  count<=count+4'd1;
           
       	  else
            count<=4'd0;
      end
        
    end
endmodule

