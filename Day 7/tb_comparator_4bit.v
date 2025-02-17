module tb_comparator_4bit;
    reg  [3:0] A;        
    reg  [3:0] B;
    wire       A_gt_B;
    wire       A_lt_B;
    wire       A_eq_B;

comparator_4bit COMP(
    .A(A),         
    .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);

always #7 A = A+1;
always #9 B = B+1;

initial begin
    A = 0;  B = 0;

    #200 $finish;
end
    
endmodule