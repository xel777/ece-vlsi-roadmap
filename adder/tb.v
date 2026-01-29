module tb;

    reg [3:0] a, b;
    wire [4:0] sum;

    adder dut(a, b, sum);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

    initial begin
        a = 4'd5;
        b = 4'd3;
        #10;
        $display("5 + 3 = %0d", sum);
        a = 4'd15;
        b = 4'd1;
        #10;
        $display("15 + 1 = %0d", sum);
        $finish;
    end
    
endmodule