module debounce(CLK, PB, PB_state, PB_down, PB_up);
parameter DELAY = 16;
input CLK;
input PB;
output reg PB_state;
output PB_down;
output PB_up;

reg PB_sync_0;
reg PB_sync_1;

dffdash dff0(
	.CLK(CLK),
	.D(PB),
	.Qdash(PB_sync_0)
);

dff dff1(
	.CLK(CLK),
	.D(PB_sync_0),
	.Q(PB_sync_1)
);

reg [(DELAY - 1):0] PB_cnt;

wire PB_idle = (PB_state == PB_sync_1);
wire PB_cnt_max = &PB_cnt;

always @(posedge CLK) begin
	if (PB_idle) PB_cnt <= 0;
	else begin
		PB_cnt <= PB_cnt + 1;
		if (PB_cnt_max) PB_state <= ~PB_state;
	end
end

assign PB_down = ~PB_idle & PB_cnt_max & ~PB_state;
assign PB_up = ~PB_idle & PB_cnt_max & PB_state;

endmodule

