`timescale 1ns/1ps

module tb_mux4_to1_by_operators;

        reg   s0;
        reg   s1;
        reg   i0;
        reg   i1;
        reg   i2;
        reg   i3;
        wire  y;   

mux4_to1_by_operators MUX(
       .s0(s0),                 
       .s1(s1),                 
       .i0(i0),                 
       .i1(i1),
       .i2(i2),
       .i3(i3),
       .y(y)                  
); 

always #5  i0 = ~ i0;
always #6  i1 = ~ i1;
always #7  i2 = ~ i2;
always #8  i3 = ~ i3;
always #9  s0 = ~ s0;
always #10 s1 = ~ s1;

initial begin
    i0 = 0; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0;

    #500 $finish;
end
    
endmodule