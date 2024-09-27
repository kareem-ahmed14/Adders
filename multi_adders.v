
module multi_adders(
    input [15:0] a,b,
    output [15:0] s_ab,
    output  c_out_ab,
    
    input [33:0] x,y, 
    output [33:0] s_xy,
    output  c_out_xy
    );
    
    rca_nbits #(.n(16)) adder_16(
       .x(a),
       .y(b),
       .C_in(0),
       .s(s_ab),
       .C_out(c_out_ab)

    );
    
        rca_nbits #(.n(34)) adder_34(
       .x(x),
       .y(y),
       .C_in(0),
       .s(s_xy),
       .C_out(c_out_xy)

    );
    
endmodule