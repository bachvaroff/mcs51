module _dff(CLK, D, Q);
input wire CLK;
input wire D;
output wire Q;

reg rQ = 0;

assign Q = rQ;

always @(posedge CLK) begin
	rQ <= D;
end

endmodule

module _dffdash(CLK, D, Qdash);
input wire CLK;
input wire D;
output wire Qdash;

reg rQ = 0;

assign Qdash = ~rQ;

always @(posedge CLK) begin
	rQ <= D;
end

endmodule

module _dff2(CLK, D, Q, Qdash);
input wire CLK;
input wire D;
output wire Q;
output wire Qdash;

reg rQ = 0;

assign Q = rQ;
assign Qdash = ~rQ;

always @(posedge CLK) begin
	rQ <= D;
end

endmodule
