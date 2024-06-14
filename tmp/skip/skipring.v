module skipring (iCLK, iE, iRST, iSEL, iMASK, oCLK, oST);
input wire iCLK, iE, iRST;
input wire [(LEN - 1):0] iSEL;
input wire [(LEN - 1):0] iMASK;
output wire oCLK, oST;
parameter LEN = 16;
parameter defE = 1'b1;
parameter defSEL = 16'b1;
parameter defMASK = 16'b0;

reg [(LEN - 1):0] SELreg = defSEL;
reg [(LEN - 1):0] bSELreg = defSEL;

reg [(LEN - 1):0] MASKreg = defMASK;
reg [(LEN - 1):0] oMASKreg = defMASK;

reg Ereg = defE;
reg oEreg = defE;

reg RSTreg = 1'b0;

assign oCLK = iCLK & ~(|(bSELreg & oMASKreg) & oEreg);
assign oST = oEreg;

always @(posedge iCLK) begin
	Ereg <= iE;
	RSTreg <= iRST;
	SELreg <= iSEL;
	MASKreg <= iMASK;
end

always @(negedge iCLK) begin: rol_bsel
	integer i;
	
	if (RSTreg) begin
		bSELreg <= SELreg;
		oMASKreg <= MASKreg;
	end else if (Ereg) begin
		for (i = 1; i <= LEN; i = i + 1)
			bSELreg[i % LEN] <= bSELreg[i - 1];
	end
	oEreg <= Ereg;
end

endmodule

