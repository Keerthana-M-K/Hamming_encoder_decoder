module half_tb;
  reg A,B;
  wire C,Sum;
  half ttb(
    .a(A),
    .b(B),
    .c(C),
    .s(Sum)
  );
initial begin
  $monitor("A = %b B =%b Sum = %b Carry = %b",A,B, Sum,C);
      A=0;B=0;
  #10 A=0;B=1;
  #10 A=1;B=0;
  #10 A=1;B=1;
  #10 $finish;
end
endmodule
