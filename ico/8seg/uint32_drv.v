module uint32_drv(clock, data, oe, drains, leds);
input clock;
input [31:0] data;
input oe;
output [7:0] drains;
output [7:0] leds;

reg [2:0] tetrade_sel;
reg [3:0] tdata;
reg [7:0] tdrains;
reg [7:0] tleds;

decode_8seg decoder(
	.oe(oe),
	.tetrade(tdata),
	.dot(1'b0),
	.leds(tleds)
);

always @(posedge clock) begin
	if (!oe) begin
		tetrade_sel <= 3'b000;
		tdrains <= 8'b00000000;
	end else begin
		case (tetrade_sel)
			3'b000: begin
				tdrains <= 8'b00000001;
				tdata <= data[3:0];
			end
			3'b001: begin
				tdrains <= 8'b00000010;
				tdata <= data[7:4];
			end
			3'b010: begin
				tdrains <= 8'b00000100;
				tdata <= data[11:8];
			end
			3'b011: begin
				tdrains <= 8'b00001000;
				tdata <= data[15:12];
			end
			3'b100: begin
				tdrains <= 8'b00010000;
				tdata <= data[16:19];
			end
			3'b101: begin
				tdrains <= 8'b00100000;
				tdata <= data[23:20];
			end
			3'b110: begin
				tdrains <= 8'b01000000;
				tdata <= data[27:24];
			end
			3'b111: begin
				tdrains <= 8'b10000000;
				tdata <= data[31:28];
			end
		endcase
		tetrade_sel <= tetrade_sel + 1;		
	end
end

assign drains = tdrains;
assign leds = tleds;

endmodule

