`include "mux8_2.v"

module mux8_2_tb();

	reg[7:0] a;
	reg[7:0] b;
	reg sel;
	wire[7:0] out;
	
	mux8_2 mux1(a, b, sel, out);

	initial
	begin
		a = 8'd4; // a = 00000100
		b = 8'd7; // b = 00000111
		sel = 1'b0; // sel =0
		
		#4 // after 4 
		
		sel = 1'b1;

		#4 
		$finish;
	end
	
endmodule
