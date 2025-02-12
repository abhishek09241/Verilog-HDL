module cla4bit (
    // Inputs and outputs
    input  [3:0] a,
    input  [3:0] b,
    input        c_in,
    output [3:0] sum,
    output       c_out
);

// Internal wires
wire p0,p1,p2,p3;           
wire g0,g1,g2,g3;
wire c1,c2,c3,c4;


// compute the p for each stage
assign p0 = a[0]^b[0];
assign p1 = a[1]^b[1];
assign p2 = a[2]^b[2];
assign p3 = a[3]^b[3];


// compute the g for each stage
assign g0 = a[0]&b[0];
assign g1 = a[1]&b[1];
assign g2 = a[2]&b[2];
assign g3 = a[3]&b[3];

// Compute the carry for each stage
// Note that c_in is equivalent c0 in the arithmetic equation for 
// the carry lookahead computation
assign c1 = g0 | (p0 & c_in);
assign c2 = g1 | (p1 & g0  ) | (p0 & p1 & c_in);
assign c3 = g2 | (p2 & g1  ) | (p1 & p2 & g0  ) | (p0 & p2 & p1 & c_in);
assign c4 = g3 | (p3 & g2  ) | (p2 & p3 & g1  ) | (p1 & p3 & p2 & g0  ) | (p0 & p1 & p2 & p3 & c_in);

// Compute sum
assign sum[0] = p0 ^ c_in;
assign sum[1] = p1 ^ c1;
assign sum[2] = p2 ^ c2;
assign sum[3] = p3 ^ c3;

// Assign carry output
assign c_out = c4;

    
endmodule