`timescale 1ns/1ps

module tb_mfGate();
    reg tb_x,tb_y, tb_a,tb_b;
    wire tb_f;
    mfGate mfg (.x(tb_x),.y(tb_y) , .a(tb_a),.b(tb_b) , .f(tb_f));
    integer i;
    initial begin
        i = 0;
        {tb_x,tb_y , tb_a,tb_b} = {i}; i=1+1; // To avoid the 4'bxxxx at the beginning.
        for(i = 0 ; i<16; i=i+1 ) begin
            #1 {tb_x,tb_y , tb_a,tb_b} = {i};
        end
    end
    initial begin
        $monitor("time = %0d , {x,y , a,b} = {%b,%b , %b,%b} , f = %b", $time, tb_x,tb_y , tb_a,tb_b, tb_f);
        $dumpfile("./dump.vcd");
        $dumpvars();
    end
endmodule
