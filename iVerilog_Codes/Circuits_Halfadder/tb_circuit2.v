module tb_simple_circuit;

reg A,B,C;

simple_circuit M1(A,B,C,Y);

initial

begin

A=1'b0 ; B=1'b0 ; C=1'b0;
#20
A=1'b0 ; B=1'b0 ; C=1'b1;
#20
A=1'b0 ; B=1'b1 ; C=1'b0;
#20
A=1'b0 ; B=1'b1 ; C=1'b1;
#20
A=1'b1 ; B=1'b0 ; C=1'b0;
#20
A=1'b1 ; B=1'b0 ; C=1'b1;
#20
A=1'b1 ; B=1'b1 ; C=1'b0;
#20
A=1'b1 ; B=1'b1 ; C=1'b1;

end


initial
begin
$monitor($time, "\t A2=%b, \t B2=%b, \t C2=%b,\t Y=%b", A,B,C,Y);
end
initial
begin
$dumpfile ("circuit2.vcd");
 $dumpvars (0, tb_simple_circuit);
end
endmodule
