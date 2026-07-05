module mux_41(input I0,I1,I2,I3, input [1:0] sel, output y);
     wire w1,w2,w3,w4,w5,w6;
  not(w1,sel[1]);
  not(w2,sel[0]);
  and(w3,w1,w2,I0);
  and(w4,w1,sel[0],I1);
  and(w5,sel[1],w2,I2);
  and(w6,sel[1],sel[0],I3);
  or(y,w3,w4,w5,w6);
endmodule
