`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 18:37:57
// Design Name: 
// Module Name: mealy_fsm
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


module mealy_fsm(output reg y,input in,clk,rst);

parameter S0=2'b00,S1=2'b01,S2=2'b10;
reg [1:0]nstate,pstate;

always @(posedge clk)
begin
    if(rst)
       pstate<=S0;
    else
       pstate<=nstate;   
end

always @(in,pstate)
begin
    case(pstate)
       S0:begin
          nstate=in?S1:S2;
//          y=0;
          end
       S1:begin
          nstate=in?S1:S2;
//          y=in?1:0;
          end
         
       S2:begin
          nstate=in?S1:S2;
//          y=in?0:1;
          end
       default:begin
            nstate=S0;
//            y=0;
            end
    endcase
end

//always @(clk)
//begin
//   if((pstate==S1&in==1)|(pstate==S2&in==0))
//      y=1;
//   else
//      y=0;
//end

always @(posedge clk)
begin
    case(pstate)
    S0:y=0;
    S1:y=in?1:0;
    S2:y=in?0:1;
    default:y=0;
    endcase
end
endmodule
