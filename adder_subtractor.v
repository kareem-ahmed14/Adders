
module adder_subtractor
#(parameter n=4)
(
input [n-1:0] x,y,
input add_n,
output [n-1:0] s,
output C_out,
output overflow
    );
    
  wire [n-1:0] xored_y;

assign overflow=(x[n-1] & xored_y[n-1] & ~s[n-1]) | (~x[n-1] & ~xored_y[n-1] & s[n-1]);

   generate 
     genvar k;
      for(k=0;k<n;k=k+1)
      begin
        assign xored_y[k]= y[k] ^ add_n; 
      end
   endgenerate
  
  rca_nbits #(.n(n)) a0(
    .x(x),
    .y(xored_y),
    .C_in(add_n),
    .s(s),
    .C_out(C_out)
      );

endmodule