/* XAPP052 */

module LFSR (CLK, E, RESET, SEED, LFSR);

parameter NUM_BITS = 32;

input CLK;
input E;
input RESET;
input [(NUM_BITS - 1):0] SEED;
output wire [NUM_BITS:1] LFSR;

reg XNOR;

always @(posedge CLK) begin
	if (!E) begin
		if (RESET) LFSR <= SEED;
	end else begin
		case (NUM_BITS)
			3: XNOR = LFSR[3] ^~ LFSR[2];
			4: XNOR = LFSR[4] ^~ LFSR[3];
			5: XNOR = LFSR[5] ^~ LFSR[3];
			6: XNOR = LFSR[6] ^~ LFSR[5];
			7: XNOR = LFSR[7] ^~ LFSR[6];
			8: XNOR = LFSR[8] ^~ LFSR[6] ^~ LFSR[5] ^~ LFSR[4];
			9: XNOR = LFSR[9] ^~ LFSR[5];
			10: XNOR = LFSR[10] ^~ LFSR[7];
			11: XNOR = LFSR[11] ^~ LFSR[9];
			12: XNOR = LFSR[12] ^~ LFSR[6] ^~ LFSR[4] ^~ LFSR[1];
			13: XNOR = LFSR[13] ^~ LFSR[4] ^~ LFSR[3] ^~ LFSR[1];
			14: XNOR = LFSR[14] ^~ LFSR[5] ^~ LFSR[3] ^~ LFSR[1];
			15: XNOR = LFSR[15] ^~ LFSR[14];
			16: XNOR = LFSR[16] ^~ LFSR[15] ^~ LFSR[13] ^~ LFSR[4];
			17: XNOR = LFSR[17] ^~ LFSR[14];
			18: XNOR = LFSR[18] ^~ LFSR[11];
			19: XNOR = LFSR[19] ^~ LFSR[6] ^~ LFSR[2] ^~ LFSR[1];
			20: XNOR = LFSR[20] ^~ LFSR[17];
			21: XNOR = LFSR[21] ^~ LFSR[19];
			22: XNOR = LFSR[22] ^~ LFSR[21];
			23: XNOR = LFSR[23] ^~ LFSR[18];
			24: XNOR = LFSR[24] ^~ LFSR[23] ^~ LFSR[22] ^~ LFSR[17];
			25: XNOR = LFSR[25] ^~ LFSR[22];
			26: XNOR = LFSR[26] ^~ LFSR[6] ^~ LFSR[2] ^~ LFSR[1];
			27: XNOR = LFSR[27] ^~ LFSR[5] ^~ LFSR[2] ^~ LFSR[1];
			28: XNOR = LFSR[28] ^~ LFSR[25];
			29: XNOR = LFSR[29] ^~ LFSR[27];
			30: XNOR = LFSR[30] ^~ LFSR[6] ^~ LFSR[4] ^~ LFSR[1];
			31: XNOR = LFSR[31] ^~ LFSR[28];
			32: XNOR = LFSR[32] ^~ LFSR[22] ^~ LFSR[2] ^~ LFSR[1];
			64: XNOR = LFSR[64] ^~ LFSR[63] ^~ LFSR[61] ^~ LFSR[60];
		endcase
		LFSR <= { LFSR[(NUM_BITS - 1):1], XNOR };
	end
end

endmodule

