`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2024 18:20:27
// Design Name: 
// Module Name: universal_shift_register
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


module universal_shift_register(output reg [7:0]out,input [7:0]in,input [1:0]m,input sin,clk,rst);

always @(posedge clk)
begin
  if(rst)
     out<=8'd0;
  else
  begin
     case(m)
     2'b00:out<=out;
     2'b01:out<={sin,out[7:1]};
     2'b10:out<={out[6:0],sin};
     2'b11:out<=in;
     default:out<=out;
     endcase
         
  end
end
endmodule
