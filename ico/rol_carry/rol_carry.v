module rol_carry (clk, led);
	input clk;
	output [2:0] led;
	
	reg [31:0] counter = 0;
	reg [3:0] sreg = 1;
	
	always @(posedge clk) begin
		counter <= counter + 1;
	end
	
	always @(posedge counter[25]) begin
		sreg <= { sreg[2:0], sreg[3] };
	end
	
	assign led = sreg[2:0];
endmodule
