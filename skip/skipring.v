module skipring (iCLK, RST, MASK, oCLK, oB0);
input wire iCLK, RST;
input wire [(LEN - 1):0] MASK;
output wire oCLK, oB0;
parameter LEN = 16;

reg [(LEN - 1):0] rcnt = { (LEN - 1)'b0, 1'b1 };

assign oCLK = iCLK & ~(|(rcnt & MASK));
assign oB0 = rcnt[0];

always @(negedge iCLK) begin
	if (RST) rcnt <= { (LEN - 1)'b0, 1'b1 };
	else rcnt <= { rcnt[(LEN - 2):0], rcnt[LEN - 1] };
end

endmodule

