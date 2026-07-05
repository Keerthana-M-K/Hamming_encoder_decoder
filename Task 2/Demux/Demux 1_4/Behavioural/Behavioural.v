module demux1_4(input i, input [1:0] sel, output reg Y1,Y2,Y3,Y4);
  always @(*) begin
    Y1=0;Y2=0;Y3=0;Y4=0;
    case(sel)
    2'b00: Y1 = i;
    2'b01: Y2 = i;
    2'b10: Y3 = i;
    2'b11: Y4 = i;
    endcase
  end
endmodule


