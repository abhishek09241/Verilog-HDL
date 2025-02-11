`timescale 1ns/1ps
// 4 to 1 Multiplxer using Logic equations

module mux4_to1 (
    output      Y,          // Output Port
    input       I0,         // Input Port
    input       I1,
    input       I2,
    input       I3,
    input       S0,         // Selection Port
    input       S1
);

assign Y    = (~S1 & ~S0 & I0) |                // Based on the Logical Eqautions
              (~S1 &  S0 & I1) |
              ( S1 & ~S0 & I2) |
              ( S1 &  S0 & I3);

endmodule