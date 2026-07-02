module half(input a,b, output reg s,c);
  always@(*) begin
    {c,s}={1'b0,a}+{1'b0,b};
    end
endmodule