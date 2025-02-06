module  ripplecarryadder_4bit (
    output  [3:0] sum,
    output        c_out,
    input   [3:0] a,
    input   [3:0] b,
    input         c_in
);
// Internal nets

wire c1, c2, c3;

// Intansiate four 1 bit full adder

fulladder_1bit dut1 (sum[0], c1, a[0],    b[0], c_in);
fulladder_1bit dut2 (sum[1], c2, a[1],    b[1], c1  );
fulladder_1bit dut3 (sum[2], c3, a[2],    b[2], c2  );
fulladder_1bit dut4 (sum[3], c_out, a[3], b[3], c3  );

    
endmodule