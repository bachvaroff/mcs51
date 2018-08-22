module LFSR_8x8 (CLK, LED, rows, columns);
input CLK;
output LED;
output [7:0] rows;
output [7:0] columns;

localparam NUM_BITS = 64;
localparam LFSR_CLK = 21;
localparam UPDATE_CLK = 16;

reg [31:0] counter;

wire [NUM_BITS-1:0] LFSR_REG;
wire LFSR_DONE;

LFSR #(NUM_BITS) LFSR_inst(
	.clk(counter[LFSR_CLK]),
	.enable(1'b1),
	.i_Seed_DV(1'b0),
	.i_Seed_Data({ NUM_BITS{1'b0} }),
	.o_LFSR_Data(LFSR_REG),
	.o_LFSR_Done(LFSR_DONE)
);

sixtyfour_bit_drv drv(
	.clock(counter[UPDATE_CLK]),
	.data(LFSR_REG[63:0]),
	.oe(1'b1),
	.row(rows),
	.column(columns)
);

assign LED = { LFSR_DONE, counter[LFSR_CLK] };

always @(posedge CLK) begin
	counter <= counter + 1;
end

endmodule

