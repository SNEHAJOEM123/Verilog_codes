`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2024 10:47:17
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder #(parameter N=6)(output cout,output [N-1:0]sum,input [N-1:0]a,b,input cin);
    wire [N:0]carry;
    assign carry[0]=cin;
    
    genvar i;
    generate for(i=0;i<N;i=i+1) begin:rca_loop
        wire w1,w2,w3;
        xor X1(w1,a[i],b[i]);
        xor X2(sum[i],w1,carry[i]);
        and A1(w2,a[i],b[i]);
        and A2(w3,carry[i],w1);
        or O1(carry[i+1],w3,w2);
     end
    endgenerate
    assign cout=carry[N];
endmodule
