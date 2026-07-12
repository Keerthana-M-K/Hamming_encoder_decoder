module home_security_ttb;
  reg W,D,M,Armed;
  wire A;
  home_security dut(
    W,D,M,Armed,A);
  
  initial begin
    $monitor("Front Door Sensor = %b Window Sensor = %b Motion Sensor = %b Armed = %b Output Alarm = %b",D,W,M,Armed,A);
    
  W=0;D=0;M=0;Armed=0;
  #10 W=0;D=0;M=1;Armed=0;
  #10 W=0;D=1;M=0;Armed=0;
  #10 W=0;D=1;M=1;Armed=1;
  #10 W=1;D=0;M=0;Armed=1;
  #10 W=0;D=0;M=1;Armed=1;
  #10 W=1;D=1;M=1;Armed=1;
  #10 $finish;
  end
endmodule