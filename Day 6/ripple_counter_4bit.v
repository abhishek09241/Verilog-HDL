module ripple_counter_4bit (
    input           clk,
    input           clear,
    output [3:0]    q
);

tff_by_data_flow TFF0(
    .clk(clk),
    .clear(clear),
    .q(q[0])
);

tff_by_data_flow TFF1(
    .clk(q[0]),
    .clear(clear),
    .q(q[1])
);

tff_by_data_flow TFF2(
    .clk(q[1]),
    .clear(clear),
    .q(q[2])
);

tff_by_data_flow TFF3(
    .clk(q[2]),
    .clear(clear),
    .q(q[3])
);
    
endmodule