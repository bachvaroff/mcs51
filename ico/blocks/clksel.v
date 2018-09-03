module clksel(CLK0, CLK1, altsel, OUTCLK);
input CLK0;
input CLK1;
input altsel;
output OUTCLK;

reg Q;
reg Qdash;

dff2 dff(
	.CLK(altsel),
	.D(Qdash),
	.Q(Q),
	.Qdash(Qdash)
);

assign OUTCLK = (CLK0 & Q) | (CLK1 & Qdash);

endmodule

