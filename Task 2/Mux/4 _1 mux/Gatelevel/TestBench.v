module mux_41_tb;
  reg I0,I1,I2,I3;
  reg [1:0] sel;
  wire y;
  mux_41 aa(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .sel(sel),
    .y(y)
  );
  initial begin
    $monitor("time= %0t I0 = %b I1 = %0b I2 = %b I3 = %b sel=%b y = %b ",$time,I0,I1,I2,I3,sel,y);
    I0=1;I1=0;I2=0;I3=0;sel=2'b00;
    #10 I0=0;I1=1;I2=0;I3=0;sel=2'b01;
    #10 I0=0;I1=0;I2=1;I3=0;sel=2'b10;
    #10 I0=0;I1=0;I2=0;I3=1;sel=2'b11;
    #10 $finish;
  end
endmodule
