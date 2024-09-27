
module adder_subtractor_nbits
#(parameter n=4)
(
input [n-1:0] x,y,
input add_n,
output [n-1:0] s,
output C_out
    );
  wire [n-1:0] xored_y;

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