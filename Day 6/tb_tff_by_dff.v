module tb_tff_by_dff;
    reg  clk;
    reg  clear;
    wire q;

tff_by_data_flow TFF(
            .clk(clk),
            .clear(clear),
            .q(q)
);

always #6  clk   = ~clk;
always #9 clear = ~clear;

    initial begin
        clk = 0;
        clear = 0;

        #200;
        $finish;
    end
    
endmodule