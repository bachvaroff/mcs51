module LFSR_8x8 (i_CLK, o_LED, rows, columns);
input i_CLK;
output [2:0] o_LED;
output [7:0] rows;
output [7:0] columns;

parameter c_NUM_BITS = 64;

reg [31:0] counter;

wire [c_NUM_BITS-1:0] w_LFSR_Data;
wire w_LFSR_Done;

LFSR #(c_NUM_BITS) LFSR_inst(
	.clk(counter[25]),
	.enable(1'b1),
	.i_Seed_DV(1'b0),
	.i_Seed_Data({c_NUM_BITS{1'b0}}),
	.o_LFSR_Data(w_LFSR_Data),
	.o_LFSR_Done(w_LFSR_Done)
);

sixtyfour_bit_drv drv(
	.clock(counter[16]),
/*
	.data(w_LFSR_Data[63:0]),
*/
	.data({32'b0,counter[31:0]}),
	.oe(1'b1),
	.row(rows),
	.column(columns)
);

assign o_LED = w_LFSR_Data[2:0];

always @(posedge i_CLK) begin
	counter <= counter + 1;
end

endmodule

