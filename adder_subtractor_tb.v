
module adder_subtractor_tb(
    );
    
    parameter n=4;
    reg [n-1:0] x,y;
    reg add_n;
    wire [n-1:0]s;
    wire C_out,overflow;
    
    adder_subtractor #(.n(n)) uut(
           .x(x),
           .y(y),
           .add_n(add_n),
           .s(s),
           .C_out(C_out),
           .overflow(overflow)
    );
    
    initial
    begin
    #40 $finish;
    end
    
    initial 
    begin
    add_n=1'b0;
    x=4'd5;
    y=4'd6;
    #10
    add_n=1'b1;
    #10
    x=4'd7;
    y=-4'd6;
    #10
    x=-4'd4;
    y=-4'd2;
    end
     initial 
     begin
     $monitor("time=%3d  x=%3d \t y=%3d \t add_n=%1b \t sum=%3d \t C_out=%1b \t overflow=%1b",
     $time,x,y,add_n,s,C_out,overflow);
     end
    
    
endmodule
