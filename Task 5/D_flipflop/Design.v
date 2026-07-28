module dff_tb;

reg clk;
reg preset, clear;
reg d;
wire Q;

dff uut(
    .clk(clk),
    .preset(preset),
    .clear(clear),
    .d(d),
    .Q(Q)
);

always #5 clk = ~clk;


initial begin

  $monitor("Time=%0t clk=%b preset=%b clear=%b D=%b Q=%b",
              $time, clk, preset, clear,d , Q);
    clk = 0;
    preset = 0;
    clear = 0;
    d=0;
    #7;
    d=1;
    #10;
    d=0;
    #10;
    preset = 1;
    #5;
    preset = 0;
    #10;
    clear = 1;
    #5;
    clear = 0;
    #10;
    d=1;
    #20;
    $finish;
end
endmodule