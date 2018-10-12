module reg32zero
(
output reg[0:31] Q,
input[0:31]   D,
input		wrenable,
input		CLK
);
  always @(posedge CLK)begin
    if (wrenable)begin
      Q <= 32'b0;
    end
  end

endmodule // reg32zero




