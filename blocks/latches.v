module _latch(E, D, Q);
input wire E;
input wire D;
output wire Q;

reg rQ;

assign Q = rQ;

always @(E or D)
	if (E) rQ <= D;

endmodule

module _nlatch(E, D, nQ);
input wire E;
input wire D;
output wire nQ;

reg rQ;

assign nQ = ~rQ;

always @(E or D)
	if (E) rQ <= D;

endmodule

