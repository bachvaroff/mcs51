module HF_test (CLK, HS, LS);
input CLK;
output HS;
output LS;

localparam LS_DRV = 10;
localparam HS_DRV = 15;

reg [31:0] counter;

always @(posedge CLK) begin
	counter <= counter + 1;
end

assign HS = counter[HS_DRV];
assign LS = counter[LS_DRV];

endmodule

