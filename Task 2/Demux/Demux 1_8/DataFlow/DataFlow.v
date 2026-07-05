
 
  module demux1_4(input i,en, input [1:0] sel, output Y1,Y2,Y3,Y4);
  assign Y1 = ~sel[1] & ~sel[0] & i & en;
  assign Y2= ~sel[1] & sel[0] & i & en;
  assign Y3= sel[1] & ~sel[0] & i & en;
  assign Y4= sel[1] & sel[0] & i & en;
endmodule

module demux1_8(input i, input [2:0] sel, output Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8);
  demux1_4 m1(
    .i(i),
    .en(~sel[2]),
    .sel(sel[1:0]),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4)
  );
  demux1_4 m2(
    .i(i),
    .en(sel[2]),
    .sel(sel[1:0]),
    .Y1(Y5),
    .Y2(Y6),
    .Y3(Y7),
    .Y4(Y8)
  );
 
endmodule
