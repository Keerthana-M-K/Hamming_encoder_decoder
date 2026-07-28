module srff_tb;

reg clk;
reg preset, clear;
reg s, r;
wire Q;

srff uut(
    .clk(clk),
    .preset(preset),
    .clear(clear),
    .s(s),
    .r(r),
    .Q(Q)
);

always #5 clk = ~clk;


initial begin

    $monitor("Time=%0t clk=%b preset=%b clear=%b S=%b R=%b Q=%b",
              $time, clk, preset, clear, s, r, Q);
    clk = 0;
    preset = 0;
    clear = 0;
    s = 0;
    r = 0;
    #7;
    s = 1;
    r = 0;
    #10;
    s = 0;
    r = 0;
    #10;
    s = 0;
    r = 1;
    #10;
    s = 1;
    r = 1;
    #10;
    preset = 1;
    #5;
    preset = 0;
    #10;
    clear = 1;
    #5;
    clear = 0;
    #10;
    s = 1;
    r = 0;
    #20;
    $finish;
end
endmodule