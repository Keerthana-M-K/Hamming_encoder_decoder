module jkff(
    input clk,
    input j,k,
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
    else begin
      case({j,k})
        2'b00 :Q <= Q;
        2'b01 :Q <=0;
        2'b10: Q <=1;
        2'b11: Q <= ~Q;
      endcase
    end
end
endmodule