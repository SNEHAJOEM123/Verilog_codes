module q1_mfg_tb;
reg a,b,x,y;
wire f;
q1_mfg_1 m(f,a,b,x,y);

initial begin
    a=0;b=0;x=0;y=0;
    #32 $finish;
end
always #2 y=~y;
always #4 x=~x;
always #8 b=~b;
always #16 a=~a;

initial begin
    $display("x,y=00 is AND \nx,y=01 is OR \nx,y=10 is NOR \nx,y=11 is NAND");
    $monitor($time, "x,y=%b%b a=%b b=%b y=%b",x,y,a,b,f);
    $dumpfile("mfgwave.vcd");
    $dumpvars;
end
endmodule