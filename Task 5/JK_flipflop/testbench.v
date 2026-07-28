module jkff_tb;

reg clk;
reg preset, clear;
reg j,k;
wire Q;

jkff uut(
    .clk(clk),
    .preset(preset),
    .clear(clear),
    .j(j),
    .k(k),
    .Q(Q)
);

always #5 clk = ~clk;


initial begin
  $monitor("Time=%0t clk=%b preset=%b clear=%b J=%b K=%b Q = %b",$time, clk, preset, clear,j,k, Q);
    clk = 0;
    preset = 0;
    clear = 0;
    j=0;k=0;
    #7;
    j=1;
    #10;
    k=1;
    #10;
    preset = 1;
    #5;
    preset = 0;
    #10;
    clear = 1;
    #5;
    clear = 0;
    #10;
    j=0;k=1;
    #20;
    $finish;
end
endmodule