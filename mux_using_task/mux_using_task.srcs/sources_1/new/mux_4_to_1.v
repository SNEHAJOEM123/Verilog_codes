`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 16:45:25
// Design Name: 
// Module Name: mux_4_to_1
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


module mux_4_to_1(output reg y,input i3,i2,i1,i0,s1,s0);

task mux(output y,input i3,i2,i1,i0,s1,s0);
begin
  y=(~s1&~s0&i0)|(~s1&s0&i1)|(s1&~s0&i2)|(s1&s0&i3);
end
endtask

always @(*)
begin
  mux(y,i3,i2,i1,i0,s1,s0);
end

endmodule
