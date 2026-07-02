module full(input a,b,cin, output reg s,cout);
  always@(*) begin
    {cout,s}={1'b0,a}+{1'b0,b}+{1'b0,cin};
    end
endmodule
