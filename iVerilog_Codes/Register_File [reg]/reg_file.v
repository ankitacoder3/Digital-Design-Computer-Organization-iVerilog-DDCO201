// Write code for modules you need here




module dfrl_16 (input wire clk, reset, load, input wire [15:0] in, output wire [15:0] out);

dfrl _f0(clk,reset,load,in[0],out[0]);

dfrl _f1(------------------------);

dfrl _f2(------------------------);

dfrl _f3(------------------------);

dfrl _f4(------------------------);

dfrl _f5(------------------------);

dfrl _f6(------------------------);

dfrl _f7(------------------------);

dfrl _f8(------------------------);

dfrl _f9(------------------------);

dfrl _f10(----------------------);

dfrl _f11(----------------------);

dfrl _f12(----------------------);

dfrl _f13(----------------------);

dfrl _f14(----------------------);

dfrl _f15(----------------------);

endmodule

module mux8_16 (input wire [0:15] i0, i1, i2, i3, i4, i5, i6, i7, input wire [0:2] j, 
output wire [0:15] o);
  
mux8 mux8_0({i0[0], i1[0], i2[0], i3[0], i4[0], i5[0], i6[0], i7[0]}, j[0], j[1], j[2], o[0]);

mux8 mux8_1({------------------);
 
mux8 mux8_2({------------------);
 
mux8 mux8_3({------------------);
 
mux8 mux8_4({------------------);
 
mux8 mux8_5({------------------);
 
mux8 mux8_6({------------------);
 
mux8 mux8_7({------------------);
 
mux8 mux8_8({------------------);
 
mux8 mux8_9({------------------);
 
mux8 mux8_10({------------------);
 
mux8 mux8_11({------------------);
 
mux8 mux8_12({------------------);
 
mux8 mux8_13({------------------);
 
mux8 mux8_14({------------------);
 
mux8 mux8_15({------------------);
 

 
module reg_file (input wire  clk, reset, wr, input wire [0:2] rd_addr_a, 
rd_addr_b, wr_addr, input wire [0:15] d_in, 
output wire [0:15] d_out_a, d_out_b);
  
wire [0:7] load;
  
wire [0:15] dout_0, dout_1, dout_2, dout_3, dout_4, dout_5, dout_6, dout_7;
 
 dfrl_16 dfrl_16_0(---------------------);
  
dfrl_16 dfrl_16_1(---------------------);
 
 dfrl_16 dfrl_16_2(---------------------);
  
dfrl_16 dfrl_16_3(---------------------);
  
dfrl_16 dfrl_16_4(---------------------);
 
 dfrl_16 dfrl_16_5(---------------------);

  dfrl_16 dfrl_16_6(---------------------);
 
 dfrl_16 dfrl_16_7(---------------------);
  
demux8 demux8_0(---------------------);

  mux8_16 mux8_16_9(dout_0, dout_1, dout_2, dout_3, dout_4, dout_5, dout_6, dout_7, rd_addr_a, d_out_a);
  
mux8_16 mux8_16_10(---------------------);

endmodule



