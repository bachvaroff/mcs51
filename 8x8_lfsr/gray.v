module gray_encoder(bin, gray);

parameter LEN = 32;

input wire [(LEN - 1):0] bin;
output wire [(LEN - 1):0] gray;

genvar i;

generate
	for (i = 0; i < (LEN - 1); i = i + 1) begin: grayout
		assign gray[i] = bin[i] ^ bin[i + 1];
	end
	assign gray[LEN - 1] = bin[LEN - 1];
endgenerate

endmodule
