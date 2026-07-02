module full(input a,b,cin,output s,cout);
  wire w1,w2,w3;
  xor(s,a,b,cin);
  and(w1,a,b);
  and(w2,b,cin);
  and(w3,cin,a);
  or(cout, w1,w2,w3);
endmodule
