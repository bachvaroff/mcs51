module counter(CLK, BTTN, LEDS0, LEDS1, ACT_LED);
input wire CLK;
input wire [6:0] BTTN; // { RST, S2, S1, BTTN3, BTTN2, BTTN1, BTTN0 }
output wire [9:0] LEDS0;
output wire [9:0] LEDS1;
output wire [1:0] ACT_LED;

reg [31:0] clk_div = 0;
reg [9:0] led_cnt = 0;
reg [1:0] act_led = 0;

wire [6:0] pb;
wire [6:0] pb_up;
wire [6:0] pb_down;
wire main_clk, reg_clk, db_clk;
wire res[2:0];

// binary
assign LEDS0 = led_cnt;

// Gray code
gray_encoder encode(
	.bin(led_cnt),
	.gray(LEDS1)
);

// activity indicator, current sinks at the outputs
assign ACT_LED = {
	~act_led[0], ~act_led[1]
};

assign reg_clk = clk_div[22];
assign db_clk = clk_div[4];

assign RST = pb[6];
assign pattern_2AA = pb[5];
assign pattern_155 = pb[4];
assign shr_1 = pb[3];
assign sub_1 = pb[2];

genvar i;

generate
	for (i = 0; i < 7; i = i + 1) begin : debouncers
		debounce BTTNS(.CLK(db_clk), .PB(BTTN[i]), .PB_state(pb[i]), .PB_down(pb_down[i]), .PB_up(pb_up[i]));
	end
endgenerate

clksel selector(
	.CLK({pb[1], reg_clk}),
	.ALTSEL(pb[0]),
	.OUTCLK(main_clk)
);

always @(posedge CLK) begin
	clk_div <= clk_div + 32'd1;
end

always @(posedge reg_clk) begin
	act_led <= act_led + 2'd1;
end

always @(posedge main_clk, posedge RST, posedge pattern_2AA, posedge pattern_155) begin
	if (RST) begin
		led_cnt <= 10'h0;
	end else if (pattern_2AA) begin
		led_cnt <= 10'h2AA;	
	end else if (pattern_155) begin
		led_cnt <= 10'h155;
	end else begin
		if (shr_1) begin
			led_cnt <= led_cnt << 1;
		end else if (sub_1) begin
			led_cnt <= led_cnt - 10'd1;
		end else begin
			led_cnt <= led_cnt + 10'd1;
		end
	end
end

endmodule
