module tb_ripplecarryadder_4bit;
    wire [3:0] sum;
    wire       c_out;
    reg  [3:0] a;
    reg  [3:0] b;
    reg        c_in;

ripplecarryadder_4bit DUT (
    .sum(sum),
    .c_out(c_out),
    .a(a),
    .b(b),
    .c_in(c_in)
);

always #5 a = a+1;
always #6 b = b+1;
always #7 c_in = ~c_in;


initial begin
    a = 0;  b = 0; c_in = 0;

    #500 $finish;
end
endmodule