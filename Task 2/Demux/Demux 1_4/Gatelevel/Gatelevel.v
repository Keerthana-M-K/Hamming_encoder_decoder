module demux1_4(input i, input [1:0] sel, output Y1,Y2,Y3,Y4);
  wire w1,w2;
  not(w1,sel[1]);
  not(w2,sel[0]);
  and(Y1,w1,w2,i);
  and(Y2,w1,sel[0],i);
  and(Y3,w2,sel[1],i);
  and(Y4,sel[1],sel[0],i);
endmodule;
