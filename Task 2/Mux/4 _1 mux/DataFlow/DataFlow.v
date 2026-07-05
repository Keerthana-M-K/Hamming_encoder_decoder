module mux_41(input I0,I1,I2,I3,input [3:2] sel, output y);
  assign y=(I0 & ~sel[3] & ~sel[2]) | (I1 & ~sel[3] & sel[2]) |(I2 & sel[3] & ~sel[2]) |(I3 & sel[3] & sel[2]);
endmodule
