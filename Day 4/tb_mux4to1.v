`timescale 1ns/1ps
module tb_mux4to1;
    wire      Y;           
    reg       I0;         
    reg       I1;
    reg       I2;
    reg       I3;
    reg       S0;         
    reg       S1;


    mux4_to1  MUX(              // Instantiate the module
                .Y(Y),          
               .I0(I0),            
               .I1(I1),
               .I2(I2),
               .I3(I3),
               .S0(S0),         
               .S1(S1)
);

always #5  I0 = ~ I0;
always #6  I1 = ~ I1;
always #7  I2 = ~ I2;
always #8  I3 = ~ I3;
always #9  S0 = ~ S0;
always #10 S1 = ~ S1;

initial begin
    I0 = 0; I1 = 0; I2 = 0; I3 = 0; S0 = 0; S1 = 0;

    #500 $finish;
end
    
endmodule