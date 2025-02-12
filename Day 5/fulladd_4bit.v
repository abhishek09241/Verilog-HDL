`timescale 1ns/1ps

// Define a 4 bit full adder by using dataflow statements.

module fulladd_4bit (
    input  [3:0] a,             // I/O declarations
    input  [3:0] b,
    input        c_in,
    output [3:0] sum,
    output       carry
);


// Define the dataflow statements for the full adder by using concatenation operator
assign {carry,sum} = a + b + c_in;
    
endmodule