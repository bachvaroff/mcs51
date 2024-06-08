module skip (CLK, LED_CLK, LED_SCLK, LED_B0);
input wire CLK;
output wire LED_CLK;
output wire LED_SCLK;
output wire LED_B0;

localparam LEN = 16;
localparam UPDATE_BIT = 24;
localparam EN_BIT = 30;

reg [31:0] counter = 32'b0;

assign LED_CLK = counter[UPDATE_BIT];
assign EN = counter[EN_BIT];

skipring #(LEN) skip_clock(
	.iCLK(LED_CLK),
	.RST(1'b0),
	.E(EN),
	.MASK(LEN'b0011010001000101),
	.oCLK(LED_SCLK),
	.oB0(LED_B0)
);

always @(posedge CLK) begin
	counter <= counter + 1;
end

endmodule

