
module arithmetic_operations
     #(parameter n=4)
    (
     input [n-1:0] x,y,
     output [n-1:0] s,
     output C_out,overflow
    );
    // first solution
    wire [n:0]sum;
    assign sum=x+y;
    assign s=sum[n-1:0];
    assign C_out=sum[n];
    // second solution 
   // assign {C_out,s}=x+y;
   assign overflow=(x[n-1] & y[n-1] & ~s[n-1])  | (~x[n-1] & ~y[n-1] & s[n-1]);
    
    
endmodule
