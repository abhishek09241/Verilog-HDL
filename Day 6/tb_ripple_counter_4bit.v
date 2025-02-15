module tb_ripple_counter_4bit;
    reg           clk;
    reg           clear;
    wire [3:0]    q;

initial
    $monitor($time, "Count q = %b Clear = %b", q[3:0], clear);
// Instantiate the ripple counter
ripple_counter_4bit RC(
    .clk(clk),
    .clear(clear),
    .q(q)
);

initial begin
    clear = 1'b1;
    #34 clear = 1'b0;
    #200 clear = 1'b1;
    #50 clear = 1'b0;
end

initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
end

initial
    begin
        #200;
        $finish;
    end
endmodule