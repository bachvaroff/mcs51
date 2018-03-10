module rol_carry (input clk, output [2:0] led);

reg [31:0] counter = 0;
reg [3:0] sreg = 1;

assign led = sreg[2:0];

always @(posedge clk) begin
	counter <= counter + 1;
end

always @(posedge counter[25]) begin
	sreg <= sreg << 1;
	sreg[0] <= sreg[3];
end

endmodule
