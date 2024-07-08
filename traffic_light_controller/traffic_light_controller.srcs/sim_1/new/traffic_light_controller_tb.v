`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 11:38:01
// Design Name: 
// Module Name: traffic_light_controller_tb
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


module traffic_light_controller_tb();
    wire red,orange,green;
    reg tclk=0;
    reg trst;
    traffic_light_controller dut(red,orange,green,tclk,trst);
    
    always #(0.01/2) tclk=~tclk;
    
    initial
    begin
       trst=1;
       #(0.01)trst=0;
       #300$finish;
    end
endmodule
