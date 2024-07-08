`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 09:05:46
// Design Name: 
// Module Name: mealy_overlapping_1011_sequence_detector
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


module mealy_overlapping_1011_sequence_detector(output reg y,input in,clk,rst);

    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
    reg [1:0] pstate,nstate;
    
    always @(posedge clk)
    begin
            if(rst)
               pstate<=S0;
            else
               pstate<=nstate;   
    end
    
    always @(posedge clk)
    begin
         if(rst)
            y<=0;
         else
            y<=(pstate==S3)&&in;
    end
    
    always @(in,pstate)
    begin
           case(pstate)
              S0:begin
                   nstate=in?S1:S0;
                 end  
                 
              S1:begin
                   nstate=in?S1:S2;
                 end  
                 
              S2:begin
                    nstate=in?S3:S0;
                 end
                 
              S3:begin
                    nstate=in?S1:S2;
                 end
              default:
                  begin
                     nstate=S0;
                  end
             endcase    
    end
endmodule

