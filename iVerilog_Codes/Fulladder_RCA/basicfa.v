module invert (input wire i, output wire o);
   assign o = !i;
endmodule

module and2 (input wire i0, i1, output wire o);
  assign o = i0 & i1;
endmodule

module or2 (input wire i0, i1, output wire o);
  assign o = i0 | i1;
endmodule

module xor2 (input wire i0, i1, output wire o);
  assign o = i0 ^ i1;
endmodule

module nand2 (input wire i0, i1, output wire o);
   wire t;
   and2 and2_0 (i0, i1, t);
   invert invert_0 (t, o);
endmodule

module fulladd(input wire a,b,cin, output wire sum, cout);
	wire [4:0]t;
	xor2 x0 (a,b,t[0]);
	xor2 x1 (t[0],cin,sum);
	and2 a0 (a,b,t[1]);
	and2 a1 (a,cin,t[2]);
	and2 a2 (b,cin,t[3]);
	or2 o0 (t[1],t[2],t[4]);
	or2 o1 (t[3],t[4],cout);

endmodule


