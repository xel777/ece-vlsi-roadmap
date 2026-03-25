module tFF (
    q, clk, rst
);

    output q;
    input clk, rst;
    wire d;

    dFF dff0 (q, d, clk, rst);
    not n1 (d,q);
endmodule