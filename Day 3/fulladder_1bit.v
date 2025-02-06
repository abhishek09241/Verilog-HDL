module fulladder_1bit (
    output sum,
    output c_out,
    input  a,
    input  b,
    input  c_in
);

// Internals nets

wire s1, c1, c2;

xor (s1, a, b);
and (c1, a, b);
xor (sum, s1, c_in);
and (c2, s1, c_in);
xor (c_out, c2, c1);
    
endmodule