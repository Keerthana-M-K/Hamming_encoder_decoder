
module demux1_4(input i, input [1:0] sel, output Y1,Y2,Y3,Y4);
  assign Y1 = ~sel[1] & ~sel[0] & i;
  assign Y2= ~sel[1] & sel[0] & i;
  assign Y3= sel[1] & ~sel[0] & i;
  assign Y4= sel[1] & sel[0] & i;
endmodule
