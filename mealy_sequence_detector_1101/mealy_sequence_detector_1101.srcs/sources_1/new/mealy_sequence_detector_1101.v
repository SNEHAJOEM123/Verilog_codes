`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 18:27:40
// Design Name: 
// Module Name: mealy_sequence_detector_1101
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

module mealy_sequence_detector_1101(output reg y,input in,clk,rst);

    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
    reg [1:0] pstate,nstate;
    
    always @(posedge clk)
        begin
            if(rst)
               pstate<=S0;
            else
               pstate<=nstate;   
        end
    
    always @(pstate,in)
    begin
           case(pstate)
              S0:begin
                   nstate=in?S1:S0;
                   y=0;
                 end  
                 
              S1:begin
                   nstate=in?S2:S0;
                   y=0;
                 end  
                 
              S2:begin
                    nstate=in?S2:S3;
                    y=0;
                 end
                 
              S3:begin
                    nstate=in?S1:S0;
                    y=in?1:0;
                 end
              default:
                  begin
                     nstate=S0;
                     y=0;
                  end
             endcase    
    end
endmodule
