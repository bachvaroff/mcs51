module LFSR (clk, enable, i_Seed_DV, i_Seed_Data, o_LFSR_Data, o_LFSR_Done);
	input clk;
	input enable;
	input i_Seed_DV;
	input [NUM_BITS-1:0] i_Seed_Data;
	output [NUM_BITS-1:0] o_LFSR_Data;
	output o_LFSR_Done;
	parameter NUM_BITS = 32;
	
	reg [NUM_BITS:1] r_LFSR;
	reg r_XNOR;
	
	always @(posedge clk) begin
		if (enable == 1'b1) begin
			if (i_Seed_DV == 1'b1) r_LFSR <= i_Seed_Data;
			else r_LFSR <= { r_LFSR[NUM_BITS-1:1], r_XNOR };
		end
	end
	
	always @(*) begin
		case (NUM_BITS)
			3: begin
				r_XNOR = r_LFSR[3] ^~ r_LFSR[2];
			end
			4: begin
				r_XNOR = r_LFSR[4] ^~ r_LFSR[3];
			end
			5: begin
				r_XNOR = r_LFSR[5] ^~ r_LFSR[3];
			end
			6: begin
				r_XNOR = r_LFSR[6] ^~ r_LFSR[5];
			end
			7: begin
				r_XNOR = r_LFSR[7] ^~ r_LFSR[6];
			end
			8: begin
				r_XNOR = r_LFSR[8] ^~ r_LFSR[6] ^~ r_LFSR[5] ^~ r_LFSR[4];
			end
			9: begin
				r_XNOR = r_LFSR[9] ^~ r_LFSR[5];
			end
			10: begin
				r_XNOR = r_LFSR[10] ^~ r_LFSR[7];
			end
			11: begin
				r_XNOR = r_LFSR[11] ^~ r_LFSR[9];
			end
			12: begin
				r_XNOR = r_LFSR[12] ^~ r_LFSR[6] ^~ r_LFSR[4] ^~ r_LFSR[1];
			end
			13: begin
				r_XNOR = r_LFSR[13] ^~ r_LFSR[4] ^~ r_LFSR[3] ^~ r_LFSR[1];
			end
			14: begin
				r_XNOR = r_LFSR[14] ^~ r_LFSR[5] ^~ r_LFSR[3] ^~ r_LFSR[1];
			end
			15: begin
				r_XNOR = r_LFSR[15] ^~ r_LFSR[14];
		        end
			16: begin
				r_XNOR = r_LFSR[16] ^~ r_LFSR[15] ^~ r_LFSR[13] ^~ r_LFSR[4];
			end
			17: begin
				r_XNOR = r_LFSR[17] ^~ r_LFSR[14];
			end
			18: begin
				r_XNOR = r_LFSR[18] ^~ r_LFSR[11];
			end
			19: begin
				r_XNOR = r_LFSR[19] ^~ r_LFSR[6] ^~ r_LFSR[2] ^~ r_LFSR[1];
			end
			20: begin
				r_XNOR = r_LFSR[20] ^~ r_LFSR[17];
			end
			21: begin
				r_XNOR = r_LFSR[21] ^~ r_LFSR[19];
			end
			22: begin
				r_XNOR = r_LFSR[22] ^~ r_LFSR[21];
			end
			23: begin
				r_XNOR = r_LFSR[23] ^~ r_LFSR[18];
			end
			24: begin
				r_XNOR = r_LFSR[24] ^~ r_LFSR[23] ^~ r_LFSR[22] ^~ r_LFSR[17];
			end
			25: begin
				r_XNOR = r_LFSR[25] ^~ r_LFSR[22];
			end
			26: begin
				r_XNOR = r_LFSR[26] ^~ r_LFSR[6] ^~ r_LFSR[2] ^~ r_LFSR[1];
			end
			27: begin
				r_XNOR = r_LFSR[27] ^~ r_LFSR[5] ^~ r_LFSR[2] ^~ r_LFSR[1];
			end
			28: begin
				r_XNOR = r_LFSR[28] ^~ r_LFSR[25];
			end
			29: begin
				r_XNOR = r_LFSR[29] ^~ r_LFSR[27];
			end
			30: begin
				r_XNOR = r_LFSR[30] ^~ r_LFSR[6] ^~ r_LFSR[4] ^~ r_LFSR[1];
			end
			31: begin
				r_XNOR = r_LFSR[31] ^~ r_LFSR[28];
			end
			32: begin
				r_XNOR = r_LFSR[32] ^~ r_LFSR[22] ^~ r_LFSR[2] ^~ r_LFSR[1];
			end
		endcase
	end
	
	assign o_LFSR_Data = r_LFSR[NUM_BITS:1];
	assign o_LFSR_Done = (r_LFSR[NUM_BITS:1] == i_Seed_Data) ? 1'b1 : 1'b0;
endmodule

module decode_8seg (tetrade, dot, leds);
	input [3:0] tetrade;
	input dot;
	output [7:0] leds;
	
	always @(*) begin
		case (tetrade)
			4'b0000: begin
				leds = (dot << 7) | 8'b00111111;
			end
			4'b0001: begin
				leds = (dot << 7) | 8'b00000110;
			end
			4'b0010: begin
				leds = (dot << 7) | 8'b01011011;
			end
			4'b0011: begin
				leds = (dot << 7) | 8'b01001111;
			end
			4'b0100: begin
				leds = (dot << 7) | 8'b01100110;
			end
			4'b0101: begin
				leds = (dot << 7) | 8'b01101101;
			end
			4'b0110: begin
				leds = (dot << 7) | 8'b01111101;
			end
			4'b0111: begin
				leds = (dot << 7) | 8'b00000111;
			end
			4'b1000: begin
				leds = (dot << 7) | 8'b01111111;
			end
			4'b1001: begin
				leds = (dot << 7) | 8'b01101111;
			end
			4'b1010: begin
				leds = (dot << 7) | 8'b01110111;
			end
			4'b1011: begin
				leds = (dot << 7) | 8'b01111100;
			end
			4'b1100: begin
				leds = (dot << 7) | 8'b00111001;
			end
			4'b1101: begin
				leds = (dot << 7) | 8'b01011110;
			end
			4'b1110: begin
				leds = (dot << 7) | 8'b01111001;
			end
			4'b1111: begin
				leds = (dot << 7) | 8'b01110001;
			end
		endcase
	end
endmodule

module sixteen_bit_drv (clock, data, oe, drains, leds);
	input clock;
	input [19:0] data;
	input oe;
	output [3:0] drains;
	output [7:0] leds;
	
	reg [1:0] tetrade_sel;
	reg [3:0] tetrade;
	reg dot;
	reg [3:0] tdrains;
	reg [7:0] tleds;
	
	decode_8seg decoder(
		.tetrade(tetrade),
		.dot(dot),
		.leds(tleds)
	);
	
	always @(posedge clock) begin
		case (tetrade_sel)
			2'b00: begin
				tdrains <= 4'b0001;
				dot <= data[16];
				tetrade <= data[3:0];
			end
			2'b01: begin
				tdrains <= 4'b0010;
				dot <= data[17];
				tetrade <= data[7:4];
			end
			2'b10: begin
				tdrains <= 4'b0100;
				dot <= data[18];
				tetrade <= data[11:8];
			end
			2'b11: begin
				tdrains <= 4'b1000;
				dot <= data[19];
				tetrade <= data[15:12];
			end
		endcase
		
		if (oe == 1) begin
			tetrade_sel <= tetrade_sel + 1;
			drains <= tdrains;
			leds <= tleds;
		end else begin
			tetrade_sel <= 2'b00;
			drains <= 4'b0000;
			leds <= 8'b00000000;
		end
	end
endmodule

module LFSR_ice40 (i_CLK, o_LED, drains, leds);
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

