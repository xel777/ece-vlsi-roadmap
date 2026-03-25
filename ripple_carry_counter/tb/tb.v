// GeekForGeeks tb

module tb;
    // input to be stored in reg and 
    // output as net(wire)
    reg clk;
    reg rst;
    wire [3:0]q;

    // instantiate the ripplecounter design block
    rippleCarryCounter dut(q, clk, rst);

    initial 
        begin
            $dumpfile("dump.vcd");
            $dumpvars(0, tb);
        end

    // generate clock pulse
    // initially provide 0
    // then inside always block toggle 
    // clock every 5 time units
    initial
        clk = 1'b0;
    always
        #5 clk = ~clk;

    // provide reset values as the input
    initial
        begin
            rst = 1'b1;
            #15 rst = 1'b0;
            #180 rst = 1'b1;
            #10 rst = 1'b0;
            #20 $finish;
        end

    //initial
    //    $monitor($time "Output q = %d", q);
endmodule