`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 12:57:26
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
    parameter N = 4;
    wire tcout;
    wire [N-1:0] tsum;
    reg [N-1:0] ta, tb;
    reg tcin;
    ripple_carry_adder #(N) dut(tcout, tsum, ta, tb, tcin);
    
    task provide_inputs;
        input [N-1:0] ta1, tb1;
        input tcin1;
    begin
        ta = ta1;
        tb = tb1;
        tcin = tcin1;
        #50;
    end
    endtask

    function automatic check_outputs;
        input [N-1:0] expected_sum, actual_sum;
        input expected_co, actual_co;
        begin
            if (actual_sum !== expected_sum || actual_co !== expected_co) begin
                $display("Output is incorrect! Expected: sum=%b, co=%b, Actual: sum=%b, co=%b", expected_sum, expected_co, actual_sum, actual_co);
                check_outputs = 0; 
            end else begin
                check_outputs = 1; 
            end
        end
    endfunction

    integer i, j, k;
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    provide_inputs(i, j, k); 
                    if (!check_outputs(i + j + k, (i + j + k) > (2**N - 1), tsum, tcout)) begin
                        $display("Error: Output check failed for A=%d, B=%d, ci=%d", i, j, k);
                    end
                end
            end
        end
    end
endmodule
