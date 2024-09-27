
module adder_subtractor_4bits(
input [3:0] x,y,
input add_n,
output [3:0] s,
output C_out
    );
  wire [3:0] xored_y;
  assign xored_y[0]= y[0] ^ add_n;  
  assign xored_y[1]= y[1] ^ add_n; 
  assign xored_y[2]= y[2] ^ add_n; 
  assign xored_y[3]= y[3] ^ add_n; 
  rca_4bits a(
    .x(x),
    .y(xored_y),
    .C_in(add_n),
    .s(s),
    .C_out(C_out)
      );
    
    
endmodule