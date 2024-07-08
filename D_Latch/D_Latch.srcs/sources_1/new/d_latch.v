`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 19:16:30
// Design Name: 
// Module Name: d_latch
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


module d_latch(output reg q,output qb,input d,en,rst);
    always @(d,en,rst)
    begin
        if(rst)
          q<=0;
        else
          begin
              if(en)
                q<=d;
          end      
    end
    assign qb=~q;
endmodule
