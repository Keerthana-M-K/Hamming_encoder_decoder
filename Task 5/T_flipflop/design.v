module tff(
    input clk,
    input t,
    input preset,
    input clear,
    output reg Q
);
always @(posedge clk or posedge preset or posedge clear)
begin
    if (clear)
        Q <= 1'b0;
    else if (preset)
        Q <= 1'b1;
  else if (t==0)
        Q <= Q;
  else if (t==1)
   		Q <= ~Q;
        
end
endmodule