`timescale 1ns/1ps
module tb_fulladd_4bit;
    reg [3:0] a;
    reg [3:0] b;
    reg       c_in;
    wire [3:0]sum;
    wire      carry;
    
   fulladd_4bit FA(
            .a(a),             // I/O declarations
            .b(b),
            .c_in(c_in),
            .sum(sum),
            .carry(carry)
); 

always #5  a    =  a+1;
always #10 b    =  b+1;
always #6  c_in = ~c_in;

    initial begin
        a = 0;  b = 0; c_in = 0;

        #500 $finish;
    end
endmodule