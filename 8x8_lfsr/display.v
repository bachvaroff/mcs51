module display(CLK, ACT_LEDS, ROWS, COLUMNS);
input wire CLK;
output wire [1:0] ACT_LEDS;
output wire [7:0] ROWS;
output wire [7:0] COLUMNS;

reg [32:0] clkdiv;

wire [63:0] frame;
wire clear;

wire act;
assign act = clkdiv[22];

reg act_led;

wire inc;
assign inc = clkdiv[22];

wire frame_clk;
assign frame_clk = clkdiv[16];

assign ACT_LEDS = {~clear, ~act_led};

driver drv(.CLK(frame_clk), .DATA(frame), .OE(1'b1), .ROW(ROWS), .COLUMN(COLUMNS), .CLEAR(clear));
LFSR #(.NUM_BITS(64))LFSR(.CLK(inc), .E(clear), .RESET(1'b0), .SEED_VAL(64'b0), .LFSR_VAL(frame));

always @(posedge CLK) clkdiv <= clkdiv + 32'd1;

always @(posedge act) act_led <= act_led + 1'd1;

endmodule
