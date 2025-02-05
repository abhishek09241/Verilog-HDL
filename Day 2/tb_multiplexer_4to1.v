module tb_multiplexer_4to1;
    wire out;         // Output of the port
    reg i0;           // Input of the port i0
    reg i1;           // Input of the port i1
    reg i2;           // Input of the port i2
    reg i3;           // Input of the port i3
    reg s1;           // Selection input s1
    reg s0;            // Selection input s2

    mux_4to1 DUT(
    .out(out),         // Output of the port
    .i0(i0),           // Input of the port i0
    .i1(i1),           // Input of the port i1
    .i2(i2),           // Input of the port i2
    .i3(i3),           // Input of the port i3
    .s1(s1),           // Selection input s1
    .s0(s0)            // Selection input s2
);


always #10 i0 = ~i0;
always #12 i1 = ~i1;
always #7 i2 = ~i2;
always #5 i3 = ~i3;
always #6 s1 = ~s1;
always #9 s0 = ~s0;

initial begin
    i0 =0; i1 =0; i2 =0; i3 =0; s1= 0;  s0 = 0;

    #500 $finish;
end
endmodule