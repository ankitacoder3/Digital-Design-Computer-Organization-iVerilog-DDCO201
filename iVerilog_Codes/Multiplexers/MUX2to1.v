module mux2 (input wire i0,i1,j, output wire o);

assign o = (j==0)? io:i1;

endmodule
