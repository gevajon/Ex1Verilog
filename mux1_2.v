
//D - 1 bit wide mux from generic gates

module mux1_2(a, b, sel, out);
	
	input a,b; // a and be are 1 bit
	input sel; // sel is 1 bit
	output out; // output is 1 bit
	
	wire and1_o, and2_o, or_o, not_o; // declaring temporary outputs for the gates
	
	and(and1_o,a,sel); // and(out,inA,inB) - getting a if sel = 1
	and(and2_o,b,not_o); // and(out,inA,inB) - getting b if !sel (sel=0)
	not(not_o,sel); // not(out,in) - turning sel to !sel (=0)
	or(out,and1_o,and2_o); // or(out,inA,inB) - getting a or b due to sel's value (a if sel=1, b if sel=0)
	
endmodule