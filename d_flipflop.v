module d_flipflop(
     input D, clk,
     output reg Q,
     output QNot
  );
    
     initial begin 
          Q <= 0;
       end
      
      always @(posedge clk) begin
        Q <= D;
      end
      
      assign QNot = ~Q;
 
endmodule
