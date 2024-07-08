module dff_tb;
reg d, clk;
wire q, qbar;
d_ff dut(q, qbar,d,clk);
initial begin 
    clk = 0;
    d = 0;
end
always #2 clk = ~clk;
always #10 d = ~d;

initial begin 
    $monitor($time, "q=%b qbar=%b d=%b clk=%b", q,qbar,d,clk);
    $dumpfile("dff_tb_123.vcd");
    $dumpvars;
end
initial #100 $finish;
endmodule