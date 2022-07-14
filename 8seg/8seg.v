module LFSR_8seg (CLK, LED_CLK, LED_DONE, drains, leds);
input wire CLK;
output wire LED_CLK;
output wire LED_DONE;
output wire [7:0] drains;
output wire [7:0] leds;

localparam NUM_BITS = 32;
localparam LFSR_CLK = 25;
localparam UPDATE_CLK = 16;

reg [31:0] counter;
wire [NUM_BITS-1:0] LFSR;

LFSR #(NUM_BITS) LFSR_inst(
	.CLK(counter[LFSR_CLK]),
	.E(1'b1),
	.RESET(1'b0),
	.SEED_VAL({ NUM_BITS{1'b0} }),
	.LFSR_VAL(LFSR),
);

uint32_drv drv(
	.CLK(counter[UPDATE_CLK]),
	.OE(1'b1),
	.data(LFSR),
	.LS_NFET(drains),
	.HS_NFET_PFET(leds)
);

always @(posedge CLK) begin
	counter <= counter + 1;
end

assign LED_CLK = counter[LFSR_CLK];
assign LED_DONE = ~|LFSR;

endmodule

