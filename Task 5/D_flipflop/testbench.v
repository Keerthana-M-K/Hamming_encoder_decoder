module dff(
    input clk,
    input d,
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
    else 
        Q <= d;
 
end
endmodule