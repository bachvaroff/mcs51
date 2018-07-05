module rol (clk, led);
	input clk;
	output [2:0] led;
	
	reg [31:0] counter;
	reg [2:0] sreg;
	
	always @(posedge clk) begin
		counter <= counter + 1;
	end

	always @(posedge counter[25]) begin
		sreg <= sreg + 1;
	end

	assign led = sreg[2:0];
endmodule