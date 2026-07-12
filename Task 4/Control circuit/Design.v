module home_security(
  input W,
  input D,
  input M,
  input Armed,
  output reg A
);

  always @(*) begin
    if (Armed && ((D || W) || (W && M)))
      A = 1;
    else
      A = 0;
  end

endmodule