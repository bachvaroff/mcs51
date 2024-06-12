module skip (mCLK, LED_CLK, LED_SCLK, LED_B0);
input wire mCLK;
output wire LED_CLK;
output wire LED_SCLK;
output wire LED_B0;

`define LEN 16
`define CLK_BIT 24

reg [31:0] counter = 32'b0;

assign LED_CLK = counter[`CLK_BIT];

skipring #(
	.LEN(`LEN),
	.defSEL(`LEN'b1)
) skip_clock (
	.iCLK(LED_CLK),
	.RST(1'b0),
	.E(1'b1),
	.rSEL(`LEN'b1),
	.MASK(`LEN'b1100110011001100),
	.oCLK(LED_SCLK),
	.oB0(LED_B0)
);

always @(posedge mCLK) begin
	counter <= counter + 1;
end

endmodule

