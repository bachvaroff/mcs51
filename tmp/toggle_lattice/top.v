module top (mCLK, LED_CLK, LED_iD, LED_oD);
input wire mCLK;
output wire LED_CLK;
output wire LED_iD;
output wire LED_oD;

`define CLK_BIT 26
`define D_BIT 29

reg [31:0] counter = 32'b0;

assign LED_CLK = counter[`CLK_BIT];
assign LED_iD = counter[`D_BIT];

toggle tg (
	.iCLK(LED_CLK),
	.iD(LED_iD),
	.oD(LED_oD),
);

always @(posedge mCLK) begin
	counter <= counter + 1;
end

endmodule

