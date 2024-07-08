module jkff_tb;
wire q,qbar;
reg j,k,clk,rst;
jk_ff dut(q,qbar,j,k,clk,rst);

initial begin
    clk = 0; j=0; k=0;
    rst=1;
    #10 rst=0;
end

always #4 clk = ~clk;
always #6 j = ~j;
always #8 k = ~k;
initial begin 
    $monitor("clk=%b j=%b k=%b q=%b qbar=%b", clk, j, k, q, qbar);
    $dumpfile("jk_fipflop.vcd");
    $dumpvars;
    #100 $finish;
end
endmodule