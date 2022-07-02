module _dff(CLK, D, Q);
input wire CLK;
input wire D;
output wire Q;

reg rQ;

assign Q = rQ;

initial begin
	rQ = 0;
end

always @(posedge CLK) begin
	rQ <= D;
end

endmodule

module _dffdash(CLK, D, Qdash);
input wire CLK;
input wire D;
output wire Qdash;

reg rQ;

assign Qdash = ~rQ;

initial begin
	rQ = 0;
end

always @(posedge CLK) begin
	rQ <= D;
end

endmodule

module _dff2(CLK, D, Q, Qdash);
input wire CLK;
input wire D;
output wire Q;
output wire Qdash;

reg rQ;

assign Q = rQ;
assign Qdash = ~rQ;

initial begin
	rQ = 0;
end

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

initial begin
	rQ = 0;
end

always @(posedge CLK) begin
	case ({J, K})
		2'b00 : rQ <= rQ;
		2'b01 : rQ <= 0;
		2'b10 : rQ <= 1;
		2'b11 : rQ <= ~rQ;
	endcase
end

endmodule

module _jkdash(CLK, J, K, Qdash);
input wire CLK;
input wire J;
input wire K;
output wire Qdash;

reg rQ;

assign Qdash = ~rQ;

initial begin
	rQ = 0;
end

always @(posedge CLK) begin
	case ({J, K})
		2'b00 : rQ <= rQ;
		2'b01 : rQ <= 0;
		2'b10 : rQ <= 1;
		2'b11 : rQ <= ~rQ;
	endcase
end

endmodule

module _jk2(CLK, J, K, Q, Qdash);
input wire CLK;
input wire J;
input wire K;
output wire Q;
output wire Qdash;

reg rQ;

assign Q = rQ;
assign Qdash = ~rQ;

initial begin
	rQ = 0;
end

always @(posedge CLK) begin
	case ({J, K})
		2'b00 : rQ <= rQ;
		2'b01 : rQ <= 0;
		2'b10 : rQ <= 1;
		2'b11 : rQ <= ~rQ;
	endcase
end

endmodule

