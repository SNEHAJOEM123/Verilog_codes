`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2024 18:34:36
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
    parameter N=4;
    integer i;
    wire tcout;
    wire [N-1:0]tsum;
    reg [N-1:0]ta,tb;
    reg tcin;
    integer fptr1,fptr2,fptr3,fptr4,fptr5;
    ripple_carry_adder #(4) dut(tcout,tsum,ta,tb,tcin);
    
    initial
    begin
        fptr1=$fopen("input_a.txt","r");
        fptr2=$fopen("input_b.txt","r");
        fptr3=$fopen("input_cin.txt","r");
        fptr4=$fopen("output_cout.txt","w");
        fptr5=$fopen("output_sum.txt","w");
        
        for(i=0;i<5;i=i+1)
        begin
           $fscanf(fptr1,"%d",ta);
           $fscanf(fptr2,"%d",tb);
           $fscanf(fptr3,"%d",tcin); 
           #10;
           $fwrite(fptr4,"%h\n",tcout);
           $fwrite(fptr5,"%h\n",tsum);
        end
        $fclose(fptr1);
        $fclose(fptr2);
        $fclose(fptr3);
        $fclose(fptr4);
        $fclose(fptr5);
        $finish;
    end
endmodule
