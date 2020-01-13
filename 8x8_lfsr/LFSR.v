// XAPP052

module LFSR (CLK, E, RESET, SEED, LFSR);
parameter NUM_BITS;
input wire CLK;
input wire E;
input wire RESET;
input wire [(NUM_BITS - 1):0] SEED;
output reg [NUM_BITS:1] LFSR;

wire xnor_term;

generate
	case (NUM_BITS)
		3: assign xnor_term = LFSR[3] ^ ~LFSR[2];
		4: assign xnor_term = LFSR[4] ^ ~LFSR[3];
		5: assign xnor_term = LFSR[5] ^ ~LFSR[3];
		6: assign xnor_term = LFSR[6] ^ ~LFSR[5];
		7: assign xnor_term = LFSR[7] ^ ~LFSR[6];
		8: assign xnor_term = LFSR[8] ^ ~LFSR[6] ^ ~LFSR[5] ^ ~LFSR[4];
		9: assign xnor_term = LFSR[9] ^ ~LFSR[5];
		10: assign xnor_term = LFSR[10] ^ ~LFSR[7];
		11: assign xnor_term = LFSR[11] ^ ~LFSR[9];
		12: assign xnor_term = LFSR[12] ^ ~LFSR[6] ^ ~LFSR[4] ^ ~LFSR[1];
		13: assign xnor_term = LFSR[13] ^ ~LFSR[4] ^ ~LFSR[3] ^ ~LFSR[1];
		14: assign xnor_term = LFSR[14] ^ ~LFSR[5] ^ ~LFSR[3] ^ ~LFSR[1];
		15: assign xnor_term = LFSR[15] ^ ~LFSR[14];
		16: assign xnor_term = LFSR[16] ^ ~LFSR[15] ^ ~LFSR[13] ^ ~LFSR[4];
		17: assign xnor_term = LFSR[17] ^ ~LFSR[14];
		18: assign xnor_term = LFSR[18] ^ ~LFSR[11];
		19: assign xnor_term = LFSR[19] ^ ~LFSR[6] ^ ~LFSR[2] ^ ~LFSR[1];
		20: assign xnor_term = LFSR[20] ^ ~LFSR[17];
		21: assign xnor_term = LFSR[21] ^ ~LFSR[19];
		22: assign xnor_term = LFSR[22] ^ ~LFSR[21];
		23: assign xnor_term = LFSR[23] ^ ~LFSR[18];
		24: assign xnor_term = LFSR[24] ^ ~LFSR[23] ^ ~LFSR[22] ^ ~LFSR[17];
		25: assign xnor_term = LFSR[25] ^ ~LFSR[22];
		26: assign xnor_term = LFSR[26] ^ ~LFSR[6] ^ ~LFSR[2] ^ ~LFSR[1];
		27: assign xnor_term = LFSR[27] ^ ~LFSR[5] ^ ~LFSR[2] ^ ~LFSR[1];
		28: assign xnor_term = LFSR[28] ^ ~LFSR[25];
		29: assign xnor_term = LFSR[29] ^ ~LFSR[27];
		30: assign xnor_term = LFSR[30] ^ ~LFSR[6] ^ ~LFSR[4] ^ ~LFSR[1];
		31: assign xnor_term = LFSR[31] ^ ~LFSR[28];
		32: assign xnor_term = LFSR[32] ^ ~LFSR[22] ^ ~LFSR[2] ^ ~LFSR[1];
		64: assign xnor_term = LFSR[64] ^ ~LFSR[63] ^ ~LFSR[61] ^ ~LFSR[60];
	endcase
endgenerate

always @(posedge CLK) begin
	if (!E) begin
		if (RESET) LFSR <= SEED;
	end else begin
		LFSR <= { LFSR[(NUM_BITS - 1):1], xnor_term };
	end
end

endmodule
