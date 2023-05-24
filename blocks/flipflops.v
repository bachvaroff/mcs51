module _dff(CLK, D, Q);
input wire CLK;
input wire D;
output wire Q;

reg rQ;

assign Q = rQ;

always @(posedge CLK) begin
	rQ <= D;
end

endmodule

module _ndff(CLK, D, nQ);
input wire CLK;
input wire D;
output wire nQ;

reg rQ;

assign nQ = ~rQ;

always @(posedge CLK) begin
	rQ <= D;
end

endmodule

module _dff2(CLK, D, Q, nQ);
input wire CLK;
input wire D;
output wire Q;
output wire nQ;

reg rQ;

assign Q = rQ;
assign nQ = ~rQ;

always @(posedge CLK) begin
	rQ <= D;
end

endmodule

module _jk(CLK, J, K, Q);
input wire CLK;
input wire J;
input wire K;
output wire Q;

reg rQ;

assign Q = rQ;

always @(posedge CLK) begin
	case ({J, K})
		2'b00 : rQ <= rQ;
		2'b01 : rQ <= 0;
		2'b10 : rQ <= 1;
		2'b11 : rQ <= ~rQ;
	endcase
end

endmodule

module _njk(CLK, J, K, nQ);
input wire CLK;
input wire J;
input wire K;
output wire nQ;

reg rQ;

assign nQ = ~rQ;

always @(posedge CLK) begin
	case ({J, K})
		2'b00 : rQ <= rQ;
		2'b01 : rQ <= 0;
		2'b10 : rQ <= 1;
		2'b11 : rQ <= ~rQ;
	endcase
end

endmodule

module _jk2(CLK, J, K, Q, nQ);
input wire CLK;
input wire J;
input wire K;
output wire Q;
output wire nQ;

reg rQ;

assign Q = rQ;
assign nQ = ~rQ;

always @(posedge CLK) begin
	case ({J, K})
		2'b00 : rQ <= rQ;
		2'b01 : rQ <= 0;
		2'b10 : rQ <= 1;
		2'b11 : rQ <= ~rQ;
	endcase
end

endmodule

module _deff(CLK, RST, D, Q);
input wire CLK;
input wire RST;
input wire D;
output wire Q;

reg r1, r2;

assign Q = r1 ^ r2;

always @(posedge CLK, posedge RST) begin
	if (RST) r1 <= 0;
	else r1 <= D ^ r2;
end

always @(negedge CLK, posedge RST) begin
	if (RST) r2 <= 0;
	else r2 <= D ^ r1;
end

endmodule

module _ndeff(CLK, RST, D, nQ);
input wire CLK;
input wire RST;
input wire D;
output wire nQ;

reg r1, r2;

assign nQ = ~(r1 ^ r2);

always @(posedge CLK, posedge RST) begin
	if (RST) r1 <= 0;
	else r1 <= D ^ r2;
end

always @(negedge CLK, posedge RST) begin
	if (RST) r2 <= 0;
	else r2 <= D ^ r1;
end

endmodule

module _deff2(CLK, RST, D, Q, nQ);
input wire CLK;
input wire RST;
input wire D;
output wire Q;
output wire nQ;

reg r1, r2;

assign Q = r1 ^ r2;
assign nQ = ~(r1 ^ r2);

always @(posedge CLK, posedge RST) begin
	if (RST) r1 <= 0;
	else r1 <= D ^ r2;
end

always @(negedge CLK, posedge RST) begin
	if (RST) r2 <= 0;
	else r2 <= D ^ r1;
end

endmodule

