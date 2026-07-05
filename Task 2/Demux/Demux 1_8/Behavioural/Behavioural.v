  module demux1_4(input i,en, input [1:0] sel, output reg Y1,Y2,Y3,Y4);
  always @(*) begin
    Y1=0;Y2=0;Y3=0;Y4=0;
    if(en ==1)
      case(sel)
      2'b00: Y1 = i;
      2'b01: Y2 = i;
      2'b10: Y3 = i;
      2'b11: Y4 = i;
      endcase
  end
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
