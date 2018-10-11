module reg32
(
output reg[0:31] Q,
input[0:31]   D,
input		wrenable,
input		CLK
);
  always @(posedge CLK)begin
    if (wrenable)begin
      Q <= D;
    end
  end

endmodule // reg32
