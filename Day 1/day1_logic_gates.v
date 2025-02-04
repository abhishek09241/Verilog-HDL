// Module declaration for basic logic gates
module logic_gates(
        input   a_in,        // Input A
        input   b_in,        // Input B
        output  y_and_out,   // AND gate output
        output  y_or_out,    // OR gate output
        output  y_not_out    // NOT gate output (inverted a_in)
);

// Continuous assignments for combinational logic
assign y_and_out = a_in & b_in;   // AND Gate: Outputs 1 if both a_in and b_in are 1
assign y_or_out  = a_in | b_in;   // OR Gate: Outputs 1 if either a_in or b_in is 1
assign y_not_out = ~a_in;         // NOT Gate: Inverts the value of a_in

endmodule