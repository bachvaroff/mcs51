module dff(CLK, D, Q);
input CLK;
input D;
output reg Q;

always @(posedge CLK) begin
	Q <= D;
end

endmodule

module dff(CLK, D, Q, Qdash);
input CLK;
input D;
output reg Q;
output reg Qdash;

always @(posedge CLK) begin
	Q <= D;
	Qdash <= ~D;
end

endmodule
