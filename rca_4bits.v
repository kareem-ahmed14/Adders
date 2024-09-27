
module rca_4bits(
   input [3:0] x,y,
   input c_in,
   output [3:0] s,
   output C_out 
    );
    wire [3:1] c;
    Full_adder F0(.C_in(c_in),.x(x[0]),.y(y[0]),.S(s[0]),.C_out(c[1]));
    Full_adder F1(.C_in(c[1]),.x(x[1]),.y(y[1]),.S(s[1]),.C_out(c[2]));
    Full_adder F2(.C_in(c[2]),.x(x[2]),.y(y[2]),.S(s[2]),.C_out(c[3]));
    Full_adder F3(.C_in(c[3]),.x(x[3]),.y(y[3]),.S(s[3]),.C_out(C_out));

endmodule
