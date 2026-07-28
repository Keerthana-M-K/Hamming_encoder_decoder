module tff_tb;

reg clk;
reg preset, clear;
reg t;
wire Q;

tff uut(
    .clk(clk),
    .preset(preset),
    .clear(clear),
    .t(t),
    .Q(Q)
);

always #5 clk = ~clk;


initial begin
  $monitor("Time=%0t clk=%b preset=%b clear=%b T=%b Q = %b",$time, clk, preset, clear,t, Q);
    clk = 0;
    preset = 0;
    clear = 0;
    t=0;
    #7;
    t=1;
    #10;
    preset = 1;
    #5;
    preset = 0;
    #10;
    clear = 1;
    #5;
    clear = 0;
    #10;
    t=0;
    #20;
    $finish;
end
endmodule