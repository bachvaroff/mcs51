module display(CLK, ACT_LEDS, ROWS, COLUMNS);
input wire CLK;
output wire [1:0] ACT_LEDS;
output wire [7:0] ROWS;
output wire [7:0] COLUMNS;

reg [32:0] clkdiv;

reg [63:0] frame;
wire [31:0] b0 = frame[15:0];
wire [31:0] g0 = frame[31:16];
wire [31:0] b1 = frame[47:32];
wire [31:0] g1 = frame[63:48];
wire clear;

wire act;
assign act = clkdiv[22];
reg act_led;

wire inc;
assign inc = clkdiv[22];
reg [15:0] inc_reg0;
reg [15:0] inc_reg1;

wire frame_clk;
assign frame_clk = clkdiv[16];

assign ACT_LEDS = {~clear, ~act_led};

driver drv(.CLK(frame_clk), .DATA(frame), .OE(1'b1), .ROW(ROWS), .COLUMN(COLUMNS), .CLEAR(clear));
gray_encoder #(.LEN(16))gray0(.bin(b0), .gray(g0));
gray_encoder #(.LEN(16))gray1(.bin(b1), .gray(g1));

always @(posedge CLK) clkdiv <= clkdiv + 32'd1;

always @(posedge act) act_led <= act_led + 1'd1;

always @(posedge inc) begin
	inc_reg0 = inc_reg0 + 16'd1;
	frame[15:0] = inc_reg0;
	inc_reg1 = inc_reg1 - 16'd1;
	frame[47:32] = inc_reg1;
end

endmodule
