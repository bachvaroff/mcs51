module sgray_encoder(CLK, bin, gray);
parameter LEN = 8;
input wire CLK;
input wire [(LEN - 1):0] bin;
output wire [(LEN - 1):0] gray;

wire [LEN:0] _bin;
reg [(LEN - 1):0] _gray;

assign _bin = { 1'b0, bin };

always @(posedge CLK) begin: calc_sencgray
	integer i;

	for (i = 0; i < LEN; i = i + 1)
		_gray[i] <= _bin[i] ^ _bin[i + 1];
end

assign gray = _gray;

endmodule

module sgray_decoder(CLK, gray, bin);
parameter LEN = 8;
input wire CLK;
input wire [(LEN - 1):0] gray;
output wire [(LEN - 1):0] bin;

wire [LEN:0] _gray;
reg [(LEN - 1):0] _bin;

assign _gray = { 1'b0, gray };

always @(posedge CLK) begin: calc_sdecgray
	integer i;

	for (i = LEN - 1; i >= 0; i = i - 1)
		_bin[i] <= ^_gray[LEN:i];
end

assign bin = _bin;

endmodule
