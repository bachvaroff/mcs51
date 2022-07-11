module uint32_drv(CLK, OE, data, LS_NFET, HS_NFET_PFET);
input wire CLK;
input wire OE;
input wire [31:0] data;
output wire [7:0] LS_NFET;
output wire [7:0] HS_NFET_PFET;

reg [2:0] tetrade_sel;
reg [3:0] tdata;
reg [7:0] tLS_NFET;

decode_8seg decoder(
	.OE(OE),
	.tetrade(tdata),
	.dot(1'b0),
	.leds_val(HS_NFET_PFET)
);

always @(posedge CLK) begin
	if (!OE) begin
		tetrade_sel <= 3'b000;
		tLS_NFET <= 8'b00000000;
		tdata <= 4'b0000;
	end else begin
		case (tetrade_sel)
			3'b000: begin
				tLS_NFET <= 8'b00000001;
				tdata <= data[3:0];
			end
			3'b001: begin
				tLS_NFET <= 8'b00000010;
				tdata <= data[7:4];
			end
			3'b010: begin
				tLS_NFET <= 8'b00000100;
				tdata <= data[11:8];
			end
			3'b011: begin
				tLS_NFET <= 8'b00001000;
				tdata <= data[15:12];
			end
			3'b100: begin
				tLS_NFET <= 8'b00010000;
				tdata <= data[16:19];
			end
			3'b101: begin
				tLS_NFET <= 8'b00100000;
				tdata <= data[23:20];
			end
			3'b110: begin
				tLS_NFET <= 8'b01000000;
				tdata <= data[27:24];
			end
			3'b111: begin
				tLS_NFET <= 8'b10000000;
				tdata <= data[31:28];
			end
		endcase
		tetrade_sel <= tetrade_sel + 3'd1;		
	end
end

assign LS_NFET = tLS_NFET;

endmodule

