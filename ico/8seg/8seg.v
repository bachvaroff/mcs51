module LFSR_8seg (CLK, LED_CLK, LED_DONE, drains, leds);
input CLK;
output LED_CLK;
output LED_DONE;
output [7:0] drains;
output [7:0] leds;

localparam NUM_BITS = 32;
localparam LFSR_CLK = 25;
localparam UPDATE_CLK = 16;

reg [31:0] counter;
reg [NUM_BITS-1:0] LFSR;

LFSR #(NUM_BITS) LFSR_inst(
	.CLK(counter[LFSR_CLK]),
	.E(1'b1),
	.RESET(1'b0),
	.SEED({ NUM_BITS{1'b0} }),
	.LFSR(LFSR),
);

uint32_drv drv(
	.CLK(counter[UPDATE_CLK]),
	.OE(1'b1),
	.data(LFSR),
	.drains(drains),
	.leds(leds)
);

always @(posedge CLK) begin
	counter <= counter + 1;
end

assign LED_CLK = counter[LFSR_CLK];
assign LED_DONE = ~|LFSR;

endmodule

