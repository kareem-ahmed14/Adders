
//Full Adder
module Full_adder(
   input C_in,x,y,
   output S,C_out
    );
    wire s1,c1,c2;
    Half_adder h1( .x(x),.y(y),.s(s1),.c(c1) );
    Half_adder h2( .x(C_in),.y(s1),.s(S),.c(c2));
    or(C_out,c1,c2);
endmodule