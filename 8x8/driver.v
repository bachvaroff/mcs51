module driver(CLK, OE, DATA, ROW, COLUMN, CLEAR);
input wire CLK;
input wire OE;
input wire [63:0] DATA;
output wire [7:0] ROW;
output wire [7:0] COLUMN;
output wire CLEAR;

reg [2:0] sel;
reg [7:0] row;
reg [7:0] column;
reg clear;

assign ROW = row;
assign COLUMN = column;
assign CLEAR = clear;

always @(posedge CLK) begin
	if (!OE) begin
		row <= 8'b00000000;
		column <= 8'b00000000;
		sel <= 3'b000;
		clear <= 1'b1;
	end else begin
		case (sel)
			3'b000: begin
				row <= 8'b00000001;
				column <= DATA[7:0];
				clear <= 1'b0;
			end
			3'b001: begin
				row <= 8'b00000010;
				column <= DATA[15:8];
				clear <= 1'b0;
			end
			3'b010: begin
				row <= 8'b00000100;
				column <= DATA[23:16];
				clear <= 1'b0;
			end
			3'b011: begin
				row <= 8'b00001000;
				column <= DATA[31:24];
				clear <= 1'b0;
			end
			3'b100: begin
				row <= 8'b00010000;
				column <= DATA[39:32];
				clear <= 1'b0;
			end
			3'b101: begin
				row <= 8'b00100000;
				column <= DATA[47:40];
				clear <= 1'b0;
			end
			3'b110: begin
				row <= 8'b01000000;
				column <= DATA[55:48];
				clear <= 1'b0;
			end
			3'b111: begin
				row <= 8'b10000000;
				column <= DATA[63:56];
				clear <= 1'b1;
			end
		endcase
		sel <= sel + 3'b001;
	end
end

endmodule
