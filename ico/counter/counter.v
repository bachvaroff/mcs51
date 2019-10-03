module counter(CLK, BTTN, LEDS, ACT_LED);
input wire CLK;
input wire [3:0] BTTN;
output wire [9:0] LEDS;
output wire [2:0] ACT_LED;

reg [31:0] clk_div;
reg [9:0] led_cnt;
reg [2:0] act_led;

wire [3:0] pb;
wire [3:0] pb_up;
wire [3:0] pb_down;
wire main_clk, reg_clk, db_clk;
wire res[1:0];

// Gray code
assign LEDS = {
	led_cnt[9], ^led_cnt[9:8],
	^led_cnt[8:7], ^led_cnt[7:6], ^led_cnt[6:5], ^led_cnt[5:4],
	^led_cnt[4:3], ^led_cnt[3:2], ^led_cnt[2:1], ^led_cnt[1:0]
};

// current sinks at output
assign ACT_LED = {
	~act_led[0], ~act_led[1], ~act_led[2]
};

assign reg_clk = clk_div[22];
assign db_clk = clk_div[4];

assign res[0] = pb[2];
assign res[1] = pb[3];

initial begin
	clk_div = 0;
	led_cnt = 0;
	act_led = 0;
end

debounce BTTN0(
	.CLK(db_clk),
	.PB(BTTN[0]),
	.PB_state(pb[0]),
	.PB_down(pb_down[0]),
	.PB_up(pb_up[0])
);

debounce BTTN1(
	.CLK(db_clk),
	.PB(BTTN[1]),
	.PB_state(pb[1]),
	.PB_down(pb_down[1]),
	.PB_up(pb_up[1])
);

debounce BTTN2(
	.CLK(db_clk),
	.PB(BTTN[2]),
	.PB_state(pb[2]),
	.PB_down(pb_down[2]),
	.PB_up(pb_up[2])
);

debounce BTTN3(
	.CLK(db_clk),
	.PB(BTTN[3]),
	.PB_state(pb[3]),
	.PB_down(pb_down[3]),
	.PB_up(pb_up[3])
);

clksel selector(
	.CLK({pb[0], reg_clk}),
	.ALTSEL(pb[1]),
	.OUTCLK(main_clk)
);

always @(posedge CLK) begin
	clk_div <= clk_div + 1;
end

always @(posedge reg_clk) begin
	act_led <= act_led + 1;
end

always @(posedge main_clk or posedge res[0] or posedge res[1]) begin
	if (res[0] || res[1]) begin
		led_cnt <= 0;
	end else begin
		led_cnt <= led_cnt + 1;
	end
end

endmodule
