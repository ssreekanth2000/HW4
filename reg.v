module reg8 (wrenable CLK, D, Q);

  input CLK;
  input wrenable;
  input [31:0] D;
  output [31:0] Q;
  reg [31:0] Q;
  always @(posedge CLK)
    if (wrenable)
      Q <= D;
    end
  end

endmodule // reg8
