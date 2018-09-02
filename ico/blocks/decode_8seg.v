module decode_8seg(oe, tetrade, dot, leds);
input oe;
input [3:0] tetrade;
input dot;
output reg [7:0] leds;

always @(*) begin
	if (!oe) begin
		leds <= 8'b00000000;
	end else begin
		case (tetrade)
			4'b0000: leds <= { dot, 7'b0111111 };
			4'b0001: leds <= { dot, 7'b0000110 };
			4'b0010: leds <= { dot, 7'b1011011 };
			4'b0011: leds <= { dot, 7'b1001111 };
			4'b0100: leds <= { dot, 7'b1100110 };
			4'b0101: leds <= { dot, 7'b1101101 };
			4'b0110: leds <= { dot, 7'b1111101 };
			4'b0111: leds <= { dot, 7'b0000111 };
			4'b1000: leds <= { dot, 7'b1111111 };
			4'b1001: leds <= { dot, 7'b1101111 };
			4'b1010: leds <= { dot, 7'b1110111 };
			4'b1011: leds <= { dot, 7'b1111100 };
			4'b1100: leds <= { dot, 7'b0111001 };
			4'b1101: leds <= { dot, 7'b1011110 };
			4'b1110: leds <= { dot, 7'b1111001 };
			4'b1111: leds <= { dot, 7'b1110001 };
		endcase
	end
end

endmodule

