module tb_dff_data_flow;
    reg  clear;
    reg  clk;
    reg  d;
    wire q;
    wire qbar;

    dff_data_flow DFF(
        .clear(clear),
        .clk(clk),
        .d(d),
        .q(q),
        .qbar(qbar)
);

always #5 clk = ~clk;
always #10 d = ~d;
always #20 clear = ~clear;

initial begin
    clk = 0;
    clear = 0;
    d = 0;

    #200;
    $finish;
end
    
endmodule