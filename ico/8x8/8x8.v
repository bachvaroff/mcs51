module LFSR_8x8 (CLK, LED_CLK, LED_DONE, rows, columns);
input CLK;
output LED_CLK;
output LED_DONE;
output [7:0] rows;
output [7:0] columns;

localparam NUM_BITS = 64;
localparam LFSR_CLK = 21;
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

