`timescale 1ns/1ps

// Module 4 to 1 Multiplexer using data flow. Conditional Operator.
// Compare to gate level model

module mux4_to1_by_operators (
    input   s0,                 // Selection port
    input   s1,                 
    input   i0,                 // Input port
    input   i1,
    input   i2,
    input   i3,
    output  y                  // Output port
);


// USe nested conditional operator

assign y  = s1 ? (s0 ? i3 : i2) :
                 (s0 ? i1 : i0) ;


    
endmodule