module demux1_8ttb;
  reg i;
  reg [2:0] sel;
  wire Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8;
  demux1_8 dut(
    i,sel,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8);
  initial begin
    $monitor("time =%0t sel = %b I = %b Y1 = %b Y2 = %b Y3 = %b Y4 = %b Y5 = %b Y6 = %b Y7 = %b Y8 = %b",$time, sel,i,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8);
    i=1;sel=3'b000;
    #10 sel=3'b001;
    #10 sel=3'b010;
    #10 sel=3'b011;
    #10 sel=3'b100;
    #10 sel=3'b101;
    #10 sel=3'b110;
    #10 sel=3'b111;
    #10 $finish;
  end
endmodule


