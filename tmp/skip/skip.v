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
	.defSEL(`LEN'b1),
	.defMASK(`LEN'b1100110011001100)
) skip_clock (
	.iCLK(LED_CLK),
	.iE(E_SKIP),
	.iRST(1'b0),
	.iSEL(`LEN'b1),
	.iMASK(`LEN'b1100110011001100),
	.oCLK(LED_SCLK),
	.oST(LED_ST)
);

always @(posedge mCLK) begin
	counter <= counter + 1;
end

endmodule

