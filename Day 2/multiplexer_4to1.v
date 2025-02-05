// Module 4 to 1 multiplxer.

module mux_4to1 (
    output out,         // Output of the port
    input i0,           // Input of the port i0
    input i1,           // Input of the port i1
    input i2,           // Input of the port i2
    input i3,           // Input of the port i3
    input s1,           // Selection input s1
    input s0            // Selection input s2
);

// Internal wire declarations
wire s1n, s0n;
wire y0, y1, y2, y3;

// Create s1n and s0n signals
not (s1n, s1);
not (s0n, s0);

// Logic for the module

and (y0, i0, s1n, s0n);
and (y1, i1, s1n, s0n);
and (y2, i2, s1n, s0n);
and (y3, i3, s1n, s0n);


or (out, y0, y1, y2, y3);

    
endmodule