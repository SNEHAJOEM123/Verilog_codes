`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 07:46:51
// Design Name: 
// Module Name: traffic_light_controller
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


module traffic_light_controller(output reg red,orange,green,input clk,rst);

parameter r = 2'b00, o = 2'b01, g = 2'b10; 
reg [1:0] state;
reg [10:0] timer;

always @(posedge clk)
begin
   if(rst)
   begin
       state<=r;
       timer<=11'b00000000000;
   end
   
   else
   begin
       case(state)
           r:begin
                 if(timer==11'd2000)
                 begin
                    timer<=11'd0;
                    state<=o;
                 end
                 else
                 begin
                    timer<=timer+11'd1;
                    state<=r;
                 end
             end
             
           o:begin
                 if(timer==11'd500)
                 begin
                    timer<=11'd0;
                    state<=g;
                 end
                 else
                 begin
                    timer<=timer+11'd1;
                    state<=o;
                 end
             end
             
          g:begin
                 if(timer==11'd1500)
                 begin
                    timer<=11'd0;
                    state<=r;
                 end
                 else
                 begin
                    timer<=timer+11'd1;
                    state<=g;
                 end
             end
          default:
                state<=r;  
       endcase
   end
end

always @(state)
begin
    case(state)
        r:begin
             red=1;
             orange=0;
             green=0;
          end
          
        o:begin
             red=0;
             orange=1;
             green=0;
          end
          
        g:begin
             red=0;
             orange=0;
             green=1;
          end  
        
        default:begin
                    red=1;
                    orange=0;
                    green=0;
                end
    endcase
end

endmodule
