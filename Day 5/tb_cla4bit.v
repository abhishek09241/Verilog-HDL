module tb_cla4bit;

    reg  [3:0] a;
    reg  [3:0] b;
    reg        c_in;
    wire [3:0] sum;
    wire       c_out;


// Instantiate
    cla4bit CLA(
            .a(a),
            .b(b),
            .c_in(c_in),
            .sum(sum),
            .c_out(c_out)
);

always #5 a     =  a+1;
always #6 b     =  b+1;
always #7 c_in  = ~c_in;
    
    initial begin
        a = 0;  b = 0; c_in = 0;

        #200;
        $finish;
    end
endmodule