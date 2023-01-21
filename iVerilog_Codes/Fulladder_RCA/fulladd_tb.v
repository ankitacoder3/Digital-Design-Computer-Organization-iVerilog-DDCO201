module fulladd_tb;
reg aa,bb,cc;
wire ss,cy;
fulladd add1(.a(aa),.b(bb),.cin(cc),.sum(ss),.cout(cy));

initial
begin
#0 aa = 1'b0; bb = 1'b0; cc=1'b0;
#20 aa  = 1'b0; bb = 1'b0; cc=1'b1;
#20 aa  = 1'b0; bb = 1'b1; cc=1'b0;
#20 aa  = 1'b0; bb = 1'b1; cc=1'b1;
#20 aa  = 1'b1; bb = 1'b0; cc=1'b0;
#20 aa = 1'b1; bb = 1'b0; cc=1'b1;
#20 aa = 1'b1; bb = 1'b1; cc=1'b0;
#20 aa = 1'b1; bb = 1'b1; cc=1'b1;
end
initial
begin
$monitor($time," \t  a=%b,\t b=%b,\t c =%b,\t  sum=%b, \t carry=%b", aa, bb, cc,ss,cy);
end
initial
begin
$dumpfile ("fulladd.vcd");
$dumpvars (0,fulladd_tb);
end
endmodule

