module gray_encoder(bin, gray);
input wire [9:0] bin;
output wire [9:0] gray;

assign gray = {
	bin[9], ^bin[9:8],
	^bin[8:7], ^bin[7:6], ^bin[6:5], ^bin[5:4],
	^bin[4:3], ^bin[3:2], ^bin[2:1], ^bin[1:0]
};

endmodule
