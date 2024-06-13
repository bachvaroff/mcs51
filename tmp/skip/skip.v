module skip (mCLK, LED_CLK, LED_SCLK, LED_ST);
input wire mCLK;
output wire LED_CLK;
output wire LED_SCLK;
output wire LED_ST;

`define LEN 16
`define CLK_BIT 24
`define E_BIT 30

reg [31:0] counter = 32'b0;

wire E_SKIP;

assign LED_CLK = counter[`CLK_BIT];
assign E_SKIP = counter[`E_BIT];

skipring #(
	.LEN(`LEN),
	.defSEL(`LEN'b0000000000000001)
) skip_clock (
	.iCLK(LED_CLK),
	.RST(1'b0),
	.E(E_SKIP),
	.rSEL(`LEN'b0000000000000001),
	.MASK(`LEN'b1100110011001100),
	.oCLK(LED_SCLK),
	.oST(LED_ST)
);

always @(posedge mCLK) begin
	counter <= counter + 1;
end

endmodule

