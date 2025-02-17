`timescale 1ns/1ps
module tb_fullsubtractor;
    reg     x;
    reg     y;
    reg     z;
    wire    D;
    wire    B;
    
    fullsubtractor FS0(
            .x(x),
            .y(y),
            .z(z),
            .D(D),       
            .B(B)        
);

initial 
    $monitor ($time, "  X = %b, Y = %b, Z = %b, D = %b, B = %b", x,y,z,D,B);
initial begin
    x = 0;  y = 0; z = 0;
#5  x = 0;  y = 0; z = 1;
#10 x = 0;  y = 1; z = 0;
#15 x = 0;  y = 1; z = 1;
#20 x = 1;  y = 0; z = 0;
#25 x = 1;  y = 0; z = 1;
#30 x = 1;  y = 1; z = 0;
#35 x = 1;  y = 1; z = 1;
#40 $finish;

end

endmodule