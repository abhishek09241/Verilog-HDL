// Negative edge-triggered D-flipflop with clear

module dff_data_flow (
    // Inputs/ Outputs ports
    input  clear,
    input  clk,
    input  d,
    output q,
    output qbar
);

// Internal wires
wire cbar, sbar, s, r, rbar;

// dataflow statements
// Create a complement of signal clear
assign cbar = ~clear;

// Input latches; A latch is level sensitive. An edge- sensitive
// Flipflop is implemented by using 3 SR latches
assign sbar = ~(rbar & s);
assign s    = ~(cbar & ~clk & sbar);
assign r    = ~(rbar & ~clk & s);
assign rbar = ~(cbar &  r  &  d);


// Output latch
assign q    = ~(qbar & s);
assign qbar = ~(cbar & r & q);
    
endmodule