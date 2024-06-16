module led_test (clk, led);
input wire clk;
output wire [2:0] led;

reg [31:0] counter = 0;

/* who's dead */
assign led[2:0] = counter[26:24];

always @(posedge clk) begin: counting
	counter <= counter + 1;
end

endmodule
