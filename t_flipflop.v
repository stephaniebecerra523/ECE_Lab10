module t_flipflop(
        input T,
        input clk,
        output Q,
        output QNot
    );
    
    jk_flipflop jkff(
          .J(T),
          .K(T),
          .clk(clk),
          .Q(Q),
          .QNot(QNot)
     );
     
     endmodule