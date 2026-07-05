module demux1_4ttb;
  reg i;
  reg [1:0] sel;
  wire Y1,Y2,Y3,Y4;
  demux1_4 dut(
    i,
    sel,
    Y1,
    Y2,
    Y3,
    Y4);
  initial begin
    $monitor("time = %0t i = %b sel = %b Y1 = %b Y2 =     %b Y3 = %b Y4 = %b",$time,i,sel,Y1,Y2,Y3,Y4);
    i=1;sel=2'b00;
    #10 sel=2'b01;
    #10 sel=2'b10;
    #10 sel=2'b11;
    #10 $finish;
  end
endmodule

