module or_coll(register, selector, out);
parameter LEN = 8;
input wire [(LEN - 1):0] register;
input wire [(LEN - 1):0] selector;
output wire out;

assign out = |(register & selector);

endmodule
