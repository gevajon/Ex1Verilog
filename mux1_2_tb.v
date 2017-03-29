`include "mux1_2.v"

module mux8_2_tb();

	reg[7:0] a;
	reg[7:0] b;
	reg sel;
	wire[7:0] out;
		
	mux1_2 mux0(a[0],b[0],sel,out[0]);
	
	mux1_2 mux1(a[1],b[1],sel,out[1]);
	
	mux1_2 mux2(a[2],b[2],sel,out[2]);
	
	mux1_2 mux3(a[3],b[3],sel,out[3]);
	
	mux1_2 mux4(a[4],b[4],sel,out[4]);
	
	mux1_2 mux5(a[5],b[5],sel,out[5]);
	
	mux1_2 mux6(a[6],b[6],sel,out[6]);
	
	mux1_2 mux7(a[7],b[7],sel,out[7]);
	
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
