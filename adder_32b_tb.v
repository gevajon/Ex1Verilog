`include "adder_32b.v"

module adder_32b_tb();

	reg cin;
	reg[31:0] a,b;
	wire[31:0] sum;
	wire cry;

	adder_32b adder(cin,a,b,sum,cry);
	
	initial
	begin
		a=32'd9;
		b=32'd15;
		cin = 1'b0;
		
		#2
		a=32'hFFFFFFFF;
		b=32'd2;
		cin = 1'b1;



		#2
		a=32'hFFFFFFFF;
		b=32'd0;
		cin = 1'b1;


		#4 
		$finish;

	end
	
endmodule
