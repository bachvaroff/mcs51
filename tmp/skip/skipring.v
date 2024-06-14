module skipring (iCLK, RST, E, rSEL, MASK, oCLK, oST);
input wire iCLK, RST, E;
input wire [(LEN - 1):0] rSEL;
input wire [(LEN - 1):0] MASK;
output wire oCLK, oST;
parameter LEN = 16;
parameter defSEL = 16'b1;

reg [(LEN - 1):0] bsel = defSEL;
reg Ereg = 1'b1;
reg OEreg = 1'b1;
reg RSTreg = 1'b0;

assign oCLK = iCLK & ~(|(bsel & MASK) & OEreg);
assign oST = OEreg;

always @(posedge iCLK) begin
	Ereg <= E;
	RSTreg <= RST;
end

always @(negedge iCLK) begin: rol_bsel
	integer i;
	
	if (RSTreg) bsel <= rSEL;
	else if (Ereg) begin
		for (i = 1; i <= LEN; i = i + 1)
			bsel[i % LEN] <= bsel[i - 1];
	end
	OEreg <= Ereg;
end

endmodule

