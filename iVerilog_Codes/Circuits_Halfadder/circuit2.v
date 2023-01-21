module simple_circuit(A2,B2,C2,Y);

output Y;

input A2,B2,C2;

wire w1,w2,w3;

and G1( w1, B2, C2 );
or G2( w2, w1, A2);
and G3( w3, A2, B2 );
or G4( Y, w2, w3);
 
endmodule
