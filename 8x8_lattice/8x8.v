module LFSR_8x8 (CLK, LED_CLK, LED_DONE, rows, columns);
input wire CLK;
output wire LED_CLK;
output wire LED_DONE;
output wire [7:0] rows;
output wire [7:0] columns;

localparam NUM_BITS = 64;
localparam LFSR_CLK = 21;
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

uint64_drv drv(
	.CLK(counter[UPDATE_CLK]),
	.OE(1'b1),
	.data(LFSR),
	.row(rows),
	.column(columns)
);

always @(posedge CLK) begin
	counter <= counter + 1;
end

assign LED_CLK = counter[LFSR_CLK];
assign LED_DONE = ~|LFSR;

endmodule

