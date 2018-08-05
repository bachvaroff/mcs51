module decode_8seg (tetrade, dot, leds);
input [3:0] tetrade;
input dot;
output [7:0] leds;

always @(*) begin
	case (tetrade)
		4'b0000: begin
			leds = { dot, 7'b0111111 };
		end
		4'b0001: begin
			leds = { dot, 7'b0000110 };
		end
		4'b0010: begin
			leds = { dot, 7'b1011011 };
		end
		4'b0011: begin
			leds = { dot, 7'b1001111 };
		end
		4'b0100: begin
			leds = { dot, 7'b1100110 };
		end
		4'b0101: begin
			leds = { dot, 7'b1101101 };
		end
		4'b0110: begin
			leds = { dot, 7'b1111101 };
		end
		4'b0111: begin
			leds = { dot, 7'b0000111 };
		end
		4'b1000: begin
			leds = { dot, 7'b1111111 };
		end
		4'b1001: begin
			leds = { dot, 7'b1101111 };
		end
		4'b1010: begin
			leds = { dot, 7'b1110111 };
		end
		4'b1011: begin
			leds = { dot, 7'b1111100 };
		end
		4'b1100: begin
			leds = { dot, 7'b0111001 };
		end
		4'b1101: begin
			leds = { dot, 7'b1011110 };
		end
		4'b1110: begin
			leds = { dot, 7'b1111001 };
		end
		4'b1111: begin
			leds = { dot, 7'b1110001 };
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

