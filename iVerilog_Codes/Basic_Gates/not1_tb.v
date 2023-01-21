module not_test;
reg a;
wire y;
not1 not_test(y,a);
initial
begin
#00 a=0;
#100 a=1;
end
initial
begin
$monitor($time,"\t a=%b, \t y=%b", a,y);
end
initial
begin
$dumpfile ("not_test.vcd");
 $dumpvars (0, not_test);
end
endmodule

