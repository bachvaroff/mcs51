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
			4'b0000: begin
				leds <= { dot, 7'b0111111 };
			end
			4'b0001: begin
				leds <= { dot, 7'b0000110 };
			end
			4'b0010: begin
				leds <= { dot, 7'b1011011 };
			end
			4'b0011: begin
				leds <= { dot, 7'b1001111 };
			end
			4'b0100: begin
				leds <= { dot, 7'b1100110 };
			end
			4'b0101: begin
				leds <= { dot, 7'b1101101 };
			end
			4'b0110: begin
				leds <= { dot, 7'b1111101 };
			end
			4'b0111: begin
				leds <= { dot, 7'b0000111 };
			end
			4'b1000: begin
				leds <= { dot, 7'b1111111 };
			end
			4'b1001: begin
				leds <= { dot, 7'b1101111 };
			end
			4'b1010: begin
				leds <= { dot, 7'b1110111 };
			end
			4'b1011: begin
				leds <= { dot, 7'b1111100 };
			end
			4'b1100: begin
				leds <= { dot, 7'b0111001 };
			end
			4'b1101: begin
				leds <= { dot, 7'b1011110 };
			end
			4'b1110: begin
				leds <= { dot, 7'b1111001 };
			end
			4'b1111: begin
				leds <= { dot, 7'b1110001 };
			end
		endcase
	end
end

endmodule

