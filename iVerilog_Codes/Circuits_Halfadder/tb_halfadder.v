module halfadd_tb;
reg aa,bb;
wire ss,cy;

halfadd add1(.a(aa), .b(bb),  .sum(ss), .cout(cy));

initial
begin
$dumpfile("halfadd_test.vcd");
$dumpvars(0, halfadd_tb);
end

initial
 begin 
$monitor($time, "\t a=%b, \t b=%b, \t sum=%b,\t carry=%b", aa,bb,ss,cy);
      aa = 1'b0;
bb = 1'b0;
#5
  aa = 1'b0;
bb = 1'b1;

#5
  aa = 1'b1;
bb = 1'b0;

#5
  aa = 1'b1;
bb = 1'b1;
end

endmodule


