module srff(
    input clk,
    input s, r,
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
        case ({s, r})
            2'b00: Q <= Q;      // Hold
            2'b01: Q <= 1'b0;   // Reset
            2'b10: Q <= 1'b1;   // Set
            2'b11: Q <= 1'bx;   // Invalid
        endcase
    end
end
endmodule