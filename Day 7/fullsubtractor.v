`timescale 1ns/1ps
// Module for 1 bit full subtractor
module fullsubtractor (
    input  x,
    input  y,
    input  z,
    output D,       // Difference
    output B        // Borrow
);

// Logic expression for Difference
assign D = (~x & ~y & z) | (~x & y & ~z) | (x & ~y & ~z) | (x & y & z);

// Logic expression for Borrow
assign B = (~x &  y) | (~x & z) | (y & z);
    
endmodule