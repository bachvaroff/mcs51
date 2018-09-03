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

wire [NUM_BITS-1:0] LFSR_REG;
wire LFSR_DONE;

LFSR #(NUM_BITS) LFSR_inst(
	.CLK(counter[LFSR_CLK]),
	.E(1'b1),
	.Seed_DV(1'b0),
	.Seed_Data({NUM_BITS{1'b0}}),
	.LFSR_Data(LFSR_REG),
	.LFSR_Done(LFSR_DONE)
);

uint32_drv drv(
	.CLK(counter[UPDATE_CLK]),
	.OE(1'b1),
	.data(LFSR_REG),
	.drains(drains),
	.leds(leds)
);

always @(posedge CLK) begin
	counter <= counter + 1;
end

assign LED_CLK = counter[LFSR_CLK];
assign LED_DONE = LFSR_DONE;

endmodule

