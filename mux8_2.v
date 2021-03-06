

module mux8_2(a, b, sel, out);
	
	input[7:0] a,b; // a and b are 8 bits
	input sel;		// sel = select = 2 bits
	output[7:0] out; // out is 8 bits
	/*
	//A - a continuous assignment
	assign out = ({8{sel}} & a) | (~{8{sel}} & b); // out is a if sel=1 OR b if sel=0
	
	//B - inside an always block - with an if
	reg[7:0] outp_reg; // decalring out as reg because using an always block
	always@(sel,a,b) // as long as there is change in a/b/sel
	begin
		if (sel)
			outp_reg = a; // out_reg is a if sel=1 
		else
			outp_reg = b; // out_reg is b if sel=1 
	end
	assign out = outp_reg; // out(wire) gets the out_reg(that came from the always)
	
	//B - inside an always block - with a case
	reg[7:0] outp_reg; // decalring out as reg because using an always block
	always@(sel,a,b) // as long as there is change in a/b/sel
	begin
		case (sel) // depending on sel's value
			0: outp_reg = b; // if sel=0 then output b
			1: outp_reg = a; // if sel=1 then output a
		endcase
	end
	assign out = outp_reg; //out(wire) get the out_reg(that came from the always)
		*/

	//C - conditional assignment
	assign out = (sel) ? a : b; // out is a when sel=1 OR b when sel=0
	

endmodule
