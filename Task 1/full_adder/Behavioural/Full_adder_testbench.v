module full_tb;
  reg A,B,Ci;
  wire Co,Sum;
  full ttb(
    .a(A),
    .b(B),
    .cin(Ci),
    .s(Sum),
    .cout(Co)
     
  );
initial begin
  $monitor("A = %b B = %b C = %b Sum = %b Carry = %b",A,B,Ci, Sum,Co);
      A=0;B=0;Ci=0;
  #10 A=0;B=1;Ci=0;
  #10 A=1;B=0;Ci=0;
  #10 A=1;B=1;Ci=0;
  #10 A=0;B=0;Ci=1;
  #10 A=0;B=1;Ci=1;
  #10 A=1;B=0;Ci=1;
  #10 A=1;B=1;Ci=1;
  #10 $finish;
end
endmodule