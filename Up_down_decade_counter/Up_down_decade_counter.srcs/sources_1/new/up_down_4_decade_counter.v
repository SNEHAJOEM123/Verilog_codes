`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 21:18:54
// Design Name: 
// Module Name: up_down_4_decade_counter
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


module up_down_4_decade_counter(output reg [3:0]count,input m,rst,clock);
  
always @( posedge clock)
    begin
      if(rst) 
        if(m)
            count<=4'd0;
        else
            count<=4'd9;
      else 
      begin
          if(m)
              if ( count>=4'd0 && count<4'd9)
                count<=count+4'd1;
               
              else
                count<=4'd0;
          else
              if ( count<4'd10 && count>=4'd1)
                count<=count-4'd1;
               
              else
                count<=4'd9;
      end
        
    end
endmodule