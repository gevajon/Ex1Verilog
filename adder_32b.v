

module adder_32b(cin,a,b,sum,cry);

	input cin; // cin is 1 bit
	input[31:0] a,b; // a and b are 32 bit
	output[31:0] sum; // sum is 32 bit
	output cry; // carry is 1 bit
	
	assign{cry,sum} = a + b + cin; // countinuous assignment

endmodule