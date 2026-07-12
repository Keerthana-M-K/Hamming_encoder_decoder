// Code your testbench here
// or browse Examples
module arith_opt_ttb;
  reg [3:0] a;
  reg [3:0] b;
  reg [2:0] sel;
  wire [3:0] result;
  
  arith_opt dut(
    a,b,sel,result);
  
  
  initial begin
    $display(" 1.Sum\n 2.Difference \n 3.And gate \n 4.Or gate\n 5.Left shift \n 6.Right shift \n 7.XOR gate \n 8.NOR gate");
    $monitor(" Inputs: A = %b B = %b Selection = %d output =%b",a,b,sel+1,result);
    
  a=4'b0001;b=4'b0100;sel=3'b000;
  #10 sel=3'b001;
  #10 sel=3'b010;
  #10 sel=3'b011;
  #10 b=4'b0010;sel=3'b100;
  #10 a=4'b1011;sel=3'b101;
  #10 sel=3'b110;
  #10 sel=3'b111;
  #10 $finish;
  end
endmodule

