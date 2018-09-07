module dff(CLK, D, Q);
input CLK;
input D;
output reg Q;

always @(posedge CLK) begin
	Q <= D;
end

endmodule

module dffdash(CLK, D, Qdash);
input CLK;
input D;
output reg Qdash;

always @(posedge CLK) begin
	Qdash <= ~D;
end

endmodule

module dff2(CLK, D, Q, Qdash);
input CLK;
input D;
output reg Q;
output reg Qdash;

always @(posedge CLK) begin
	Q <= D;
	Qdash <= ~D;
end

endmodule
