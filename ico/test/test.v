module HF_test (CLK, HS, LS);
input CLK;
output HS;
output LS;

localparam LS_DRV = 20;
localparam HS_DRV = 22;

reg [31:0] counter;

always @(posedge CLK) begin
	counter <= counter + 1;
end

assign HS = counter[HS_DRV];
assign LS = counter[LS_DRV] & counter[HS_DRV];

endmodule

