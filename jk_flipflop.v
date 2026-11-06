module jk_flipflop(
      input J, K, clk, 
      output Q,
      output QNot
      
  );
      
     wire D;
     
     assign D = (J & QNot) | (~K & Q);
     
     d_flipflop dff(
          .D(D),
          .clk(clk),
          .Q(Q),
          .QNot(QNot)
     );
     endmodule