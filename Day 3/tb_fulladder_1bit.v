module tb_fulladder_1bit;
    wire sum;
    wire c_out;
    reg  a;
    reg  b;
    reg  c_in;

fulladder_1bit DUT (
    .sum(sum),
    .c_out(c_out),
    .a(a),
    .b(b),
    .c_in(c_in)
);

always #5 a = ~a;
always #6 b = ~b;
always #7 c_in = ~c_in;


initial begin
    a = 0;  b = 0; c_in = 0;

    #500 $finish;
end
endmodule