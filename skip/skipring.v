module skipring (iCLK, RST, E, MASK, oCLK, oB0);
input wire iCLK, RST, E;
input wire [(LEN - 1):0] MASK;
output wire oCLK, oB0;
parameter LEN = 16;

reg [(LEN - 1):0] bsel = { (LEN - 1)'b0, 1'b1 };

assign oCLK = iCLK & ~(|(bsel & MASK) & E);
assign oB0 = bsel[0];

always @(negedge iCLK) begin
	if (RST) bsel <= { (LEN - 1)'b0, 1'b1 };
	else if (E) bsel <= { bsel[(LEN - 2):0], bsel[LEN - 1] };
end

endmodule

