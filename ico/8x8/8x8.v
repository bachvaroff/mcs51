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

wire [NUM_BITS-1:0] LFSR_REG;
wire LFSR_DONE;

LFSR #(NUM_BITS) LFSR_inst(
	.CLK(counter[LFSR_CLK]),
	.E(1'b1),
	.Seed_DV(1'b0),
	.Seed_Data({ NUM_BITS{1'b0} }),
	.LFSR_Data(LFSR_REG),
	.LFSR_Done(LFSR_DONE)
);

uint64_drv drv(
	.CLK(counter[UPDATE_CLK]),
	.OE(1'b1),
	.data(LFSR_REG),
	.row(rows),
	.column(columns)
);

always @(posedge CLK) begin
	counter <= counter + 1;
end

assign LED_CLK = counter[LFSR_CLK];
assign LED_DONE = LFSR_DONE;

endmodule

