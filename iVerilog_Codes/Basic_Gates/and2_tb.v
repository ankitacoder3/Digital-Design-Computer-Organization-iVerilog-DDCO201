module and2_test;
reg a,b;
wire c;
and2  and2_test(c, a, b);
initial
begin
#000 a=0;b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
end
initial
begin
$monitor($time,"\t a=%b, \t b=%b, \t c=%b", a, b, c);
end
initial
begin
$dumpfile ("and2_test.vcd");
$dumpvars (0, and2_test);
end
endmodule


