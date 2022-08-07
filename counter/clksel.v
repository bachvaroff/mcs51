module clksel(CLK, ALTSEL, OUTCLK);
input wire [1:0] CLK;
input wire ALTSEL;
output wire OUTCLK;

reg Q;

assign OUTCLK = (CLK[0] & Q) | (CLK[1] & ~Q);

always @(posedge ALTSEL) begin
	Q <= Q ^ 1'b1;
end

endmodule
