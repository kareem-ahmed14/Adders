
module rca_nbits
#(parameter n=4)
    (
  input [n-1 : 0] x,y,
  input C_in,
  output [n-1 : 0] s,
  output C_out
    );
    wire [n : 0]c;
    assign c[0]=C_in;
    assign C_out=c[n];
  generate
    genvar k; 
        for(k=0;k<n;k=k+1)
        begin: stage
        Full_adder FA(
        .C_in(c[k]),
        .x(x[k]),
        .y(y[k]),
        .S(s[k]),
        .C_out(c[k+1])        
        );
        
        end
        
  endgenerate 
   
endmodule
