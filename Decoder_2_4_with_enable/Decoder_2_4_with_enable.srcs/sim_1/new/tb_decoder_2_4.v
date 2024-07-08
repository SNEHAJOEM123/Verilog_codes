`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2024 10:30:36
// Design Name: 
// Module Name: tb_decoder_2_4
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


module tb_decoder_2_4();
wire D3,D2,D1,D0;
reg A,B,En;

decoder_2_to_4 DUT(D3,D2,D1,D0,A,B,En);

initial
begin
En=1;
#2 En=0;
#5A=0;B=0;
#5 A=0;B=1;
#5 A=1;B=0;
#5 A=1;B=1;
#5 $finish;
end

endmodule
