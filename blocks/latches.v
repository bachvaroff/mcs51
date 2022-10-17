module _latch(E, D, Q);
input wire E;
input wire D;
output wire Q;

reg rQ;

assign Q = rQ;

always @(E or D)
	if (E) rQ <= D;

endmodule

module _latchdash(E, D, Qdash);
input wire E;
input wire D;
output wire Qdash;

reg rQ;

assign Qdash = ~rQ;

always @(E or D)
	if (E) rQ <= D;

endmodule
