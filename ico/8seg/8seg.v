module LFSR_8seg (i_CLK, o_LED, drains, leds);
	input i_CLK;
	output [2:0] o_LED;
	output [3:0] drains;
	output [7:0] leds;
	parameter c_NUM_BITS = 32;
	
	reg [31:0] counter;
	
	reg lfclk;
	reg update;
	wire [c_NUM_BITS-1:0] w_LFSR_Data;
	wire w_LFSR_Done;
	
	LFSR #(c_NUM_BITS) LFSR_inst(
		.clk(lfclk),
		.enable(1'b1),
		.i_Seed_DV(1'b0),
		.i_Seed_Data({c_NUM_BITS{1'b0}}),
		.o_LFSR_Data(w_LFSR_Data),
		.o_LFSR_Done(w_LFSR_Done)
	);
	
	
	sixteen_bit_drv drv(
		.clock(update),
		.data(w_LFSR_Data[19:0]),
		.oe(1'b1),
		.drains(drains),
		.leds(leds)
	);
	
	assign o_LED = w_LFSR_Data[2:0];
	
	always @(posedge i_CLK) begin
		counter <= counter + 1;
	end
	
	always @(posedge counter[17]) begin
		update <= ~update;
	end
	
	always @(posedge counter[23]) begin
		lfclk <= ~lfclk;
	end
endmodule
