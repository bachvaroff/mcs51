module counter(CLK, CLKSEL, S1, S2, BTTN, LEDS0, LEDS1, ACT_LED);
input wire CLK;
input wire CLKSEL; // RST
input wire S1;
input wire S2;
input wire [3:0] BTTN;
output wire [9:0] LEDS0;
output wire [9:0] LEDS1;
output wire [1:0] ACT_LED;

reg [31:0] clk_div = 0;
reg [9:0] led_cnt = 0;
reg [1:0] act_led = 0;

wire sel, sel_up, sel_down;
wire [3:0] pb;
wire [3:0] pb_up;
wire [3:0] pb_down;
wire s1, s2;
wire s1_up, s2_up;
wire s1_down, s2_down;
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

assign res[0] = pb[1];
assign res[1] = pb[2];
assign res[2] = pb[3];

genvar i;

generate
	for (i = 0; i < 4; i = i + 1) begin : debouncers
		debounce BTTNS(.CLK(db_clk), .PB(BTTN[i]), .PB_state(pb[i]), .PB_down(pb_down[i]), .PB_up(pb_up[i]));
	end
endgenerate

debounce BTTNCLKSEL(
	.CLK(db_clk),
	.PB(CLKSEL),
	.PB_state(sel),
	.PB_down(sel_down),
	.PB_up(sel_up)
);

debounce BTTN_S1(
	.CLK(db_clk),
	.PB(S1),
	.PB_state(s1),
	.PB_down(s1_down),
	.PB_up(s1_up)
);

debounce BTTN_S2(
	.CLK(db_clk),
	.PB(S2),
	.PB_state(s2),
	.PB_down(s2_down),
	.PB_up(s2_up)
);

clksel selector(
	.CLK({pb[0], reg_clk}),
	.ALTSEL(sel),
	.OUTCLK(main_clk)
);

always @(posedge CLK) begin
	clk_div <= clk_div + 32'd1;
end

always @(posedge reg_clk) begin
	act_led <= act_led + 2'd1;
end

always @(posedge main_clk, posedge res[0], posedge res[1], posedge res[2]) begin
	if (res[0]) begin
		led_cnt <= 10'b0000000000;
	end else if (res[1]) begin
		led_cnt <= 10'b0101010101;	
	end else if (res[2]) begin
		led_cnt <= 10'b1010101010;
	end else begin
		if (s1) begin
			led_cnt <= led_cnt - 10'b0000000001;
		end else if (s2) begin
			led_cnt <= led_cnt << 1;
		end else begin
			led_cnt <= led_cnt + 10'b0000000001;
		end
	end
end

endmodule