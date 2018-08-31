module sixtyfour_bit_drv (clock, data, oe, row, column);
input clock;
input [63:0] data;
input oe;
output [7:0] row;
output [7:0] column;

reg [2:0] byte_sel;
reg [7:0] trow;
reg [7:0] tcolumn;
	
always @(posedge clock) begin
	if (!oe) begin
		trow <= 8'b00000000;
		tcolumn <= 8'b00000000;
		byte_sel <= 3'b000;
	end else begin
		case (byte_sel)
			3'b000: begin
				trow <= 8'b00000001;
				tcolumn <= data[7:0];
			end
			3'b001: begin
				trow <= 8'b00000010;
				tcolumn <= data[15:8];
			end
			3'b010: begin
				trow <= 8'b00000100;
				tcolumn <= data[23:16];
			end
			3'b011: begin
				trow <= 8'b00001000;
				tcolumn <= data[31:24];
			end
			3'b100: begin
				trow <= 8'b00010000;
				tcolumn <= data[39:32];
			end
			3'b101: begin
				trow <= 8'b00100000;
				tcolumn <= data[47:40];
			end
			3'b110: begin
				trow <= 8'b01000000;
				tcolumn <= data[55:48];
			end
			3'b111: begin
				trow <= 8'b10000000;
				tcolumn <= data[63:56];
			end
		endcase
		byte_sel <= byte_sel + 1;
	end
end

assign row = trow;
assign column = tcolumn;

endmodule

