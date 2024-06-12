module skipring (iCLK, RST, E, rSEL, MASK, oCLK, oB0);
input wire iCLK, RST, E;
input wire [(LEN - 1):0] rSEL;
input wire [(LEN - 1):0] MASK;
output wire oCLK, oB0;
parameter LEN = 16;
parameter defSEL = 16'b1;

reg [(LEN - 1):0] bsel = defSEL;

assign oCLK = iCLK & ~(|(bsel & MASK) & E);
assign oB0 = bsel[0];

/*
always @(negedge iCLK) begin
	if (RST) bsel <= rSEL;
	else if (E) bsel <= { bsel[(LEN - 2):0], bsel[LEN - 1] };
end
*/

always @(negedge iCLK) begin: rol_bsel
	integer i;
	
	if (RST) bsel <= rSEL;
	else if (E) begin
		for (i = 1; i <= LEN; i = i + 1)
			bsel[i % LEN] <= bsel[i - 1];
	end
end

endmodule

