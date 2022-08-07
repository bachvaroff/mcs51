module debounce(CLK, PB, PB_state, PB_down, PB_up);
parameter DELAY = 16;
input wire CLK;
input wire PB;
output wire PB_state;
output wire PB_down;
output wire PB_up;

reg [(DELAY - 1):0] PB_cnt;
reg rPB_state = 0;
wire PB_sync_0;
wire PB_sync_1;
wire PB_idle = (rPB_state == PB_sync_1);
wire PB_cnt_max = &PB_cnt;

assign PB_state = rPB_state;
assign PB_down = ~PB_idle & PB_cnt_max & ~rPB_state;
assign PB_up = ~PB_idle & PB_cnt_max & rPB_state;

_dffdash dff0(
	.CLK(CLK),
	.D(PB),
	.Qdash(PB_sync_0)
);

_dff dff1(
	.CLK(CLK),
	.D(PB_sync_0),
	.Q(PB_sync_1)
);

always @(posedge CLK) begin
	if (PB_idle) PB_cnt <= 0;
	else begin
		PB_cnt <= PB_cnt + 1;
		if (PB_cnt_max) rPB_state <= ~rPB_state;
	end
end

endmodule
