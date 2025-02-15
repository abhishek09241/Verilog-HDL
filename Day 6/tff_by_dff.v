// Negative edge triggered T flip flop. Toggles every clock cycle


module tff_by_data_flow (
    // Iinput/ Output ports
    input  clk,
    input  clear,
    output q
);

// Instantiate the edge-triggered DFF
// Complement of output q is fed back .
// Notice qbar mot needed, Unconnected port.
dff_data_flow DFF(

            .clear(clear),
            .clk(clk),
            .d(~q),
            .q(q)
);
    
endmodule