module toggle (iCLK, iD, oD);
input wire iCLK, iD;
output wire oD;

reg [1:0] Dreg = 2'b00;

assign oD = ^Dreg;

always @(posedge iCLK) begin
	Dreg[0] <= iD;
	Dreg[1] <= Dreg[0];
end

endmodule

