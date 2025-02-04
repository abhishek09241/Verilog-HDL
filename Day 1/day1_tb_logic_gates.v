// Testbench for logic_gates module
module tb_logic_gates;

    reg   a_in;          // Test input A
    reg   b_in;          // Test input B
    wire  y_and_out;     // Observed AND gate output
    wire  y_or_out;      // Observed OR gate output
    wire  y_not_out;     // Observed NOT gate output

    // Instantiate the Device Under Test (DUT)
    logic_gates DUT(
        .a_in(a_in),
        .b_in(b_in),
        .y_and_out(y_and_out),
        .y_or_out(y_or_out),
        .y_not_out(y_not_out)
    );

    // Generate a clock-like toggle for a_in every 5 time units
    always #5 a_in = ~a_in;

    // Generate a clock-like toggle for b_in every 10 time units
    always #10 b_in = ~b_in;

    // Initial block to set starting values and end simulation
    initial begin
        a_in = 0; b_in = 0;    // Initialize inputs to 0

        #500                  // Run the simulation for 500 time units
        $finish;              // Terminate the simulation
    end

endmodule