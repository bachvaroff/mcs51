module clksel(CLK0, CLK1, altsel, OUTCLK);
input CLK0;
input CLK1;
input altsel;
output OUTCLK;

reg Q = 1'b1;

always @(posedge altsel)
	Q <= Q ^ 1'b1;

assign OUTCLK = (CLK0 & Q) | (CLK1 & ~Q);

endmodule

