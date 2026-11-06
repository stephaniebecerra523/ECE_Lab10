module top3(
   input [3:0]sw,
   input btnC,
   output [5:0]led
   
 );
   
   d_flipflop pt1(
        .D(sw[0]),
        .clk(btnc),
        .Q(led[0]),
        .QNot(led[1])
    );
    
    jk_flipflop pt2(
          .J(sw[1]),
          .K(sw[2]),
          .clk(btnC),
          .Q(led[2]),
          .QNot(led[3])
     );
     
      t_flipflop pt3(
            .T(sw[3]),
            .clk(btnC),
            .Q(led[4]),
            .QNot(led[5])
        );
   endmodule  
        