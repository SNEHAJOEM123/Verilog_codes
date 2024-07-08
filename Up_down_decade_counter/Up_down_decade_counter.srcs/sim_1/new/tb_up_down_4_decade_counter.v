`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 21:40:32
// Design Name: 
// Module Name: tb_up_down_4_decade_counter
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


module tb_up_down_4_decade_counter;
    wire [3:0] t_count;
    reg t_m,t_rst,t_clock;
      
    up_down_4_decade_counter dut(t_count,t_m,t_rst,t_clock);
    initial 
    begin
        t_rst=1'd1;
        t_m=1'd1;
        t_clock=0;
       #20 t_rst=0;
       #250 t_m=0;
       #250 $finish;
    end
      always #10 t_clock=~t_clock; 
      
      
endmodule
