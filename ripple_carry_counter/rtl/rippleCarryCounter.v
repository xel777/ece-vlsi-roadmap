module rippleCarryCounter (
    q, clk, rst
);
    
    output [3:0] q;
    input clk, rst;

    tFF tff0 (q[0], clk, rst);
    tFF tff1 (q[1], q[0], rst);
    tFF tff2 (q[2], q[1], rst);
    tFF tff3 (q[3], q[2], rst);
    
endmodule