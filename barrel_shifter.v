module mux2(input wire i0,i1,j,output wire o)
	assign o = (j==0)?i0:i1;
endmodule

module demux2 (input wire i, j, output wire o0, o1);
  assign o0 = (j==0)?i:1'b0;
  assign o1 = (j==1)?i:1'b0;
endmodule

module demux1_2_16(input wire [0:15] i_16,input wire sel,output wire [0:15] o0_16,o1_16);

	demux2 demux_unit_00(i_16[0],sel,o0_16[0],o1_16[0]);
	demux2 demux_unit_01(i_16[1],sel,o0_16[1],o1_16[1]);
	demux2 demux_unit_02(i_16[2],sel,o0_16[2],o1_16[2]);
	demux2 demux_unit_03(i_16[3],sel,o0_16[3],o1_16[3]);
	demux2 demux_unit_04(i_16[4],sel,o0_16[4],o1_16[4]);
	demux2 demux_unit_05(i_16[5],sel,o0_16[5],o1_16[5]);
	demux2 demux_unit_06(i_16[6],sel,o0_16[6],o1_16[6]);
	demux2 demux_unit_07(i_16[7],sel,o0_16[7],o1_16[7]);
	demux2 demux_unit_08(i_16[8],sel,o0_16[8],o1_16[8]);
	demux2 demux_unit_09(i_16[9],sel,o0_16[9],o1_16[9]);
	demux2 demux_unit_10(i_16[10],sel,o0_16[10],o1_16[10]);
	demux2 demux_unit_11(i_16[11],sel,o0_16[11],o1_16[11]);
	demux2 demux_unit_12(i_16[12],sel,o0_16[12],o1_16[12]);
	demux2 demux_unit_13(i_16[13],sel,o0_16[13],o1_16[13]);
	demux2 demux_unit_14(i_16[14],sel,o0_16[14],o1_16[14]);
	demux2 demux_unit_15(i_16[15],sel,o0_16[15],o1_16[15]);

endmodule

module barrel_shifter_left16(input wire [15:0] i,input wire s0,s1,s2,output wire [15:0] o)
	wire zero;
	wire [15:0] w0,w1,w2;
	assign zero = 1'b0;
	
	//level 1
	mux2 m0(i[0],zero,s3,w0[0]);
	mux2 m1(i[1],zero,s3,w0[1]);
	mux2 m2(i[2],zero,s3,w0[2]);
	mux2 m3(i[3],zero,s3,w0[3]);
	mux2 m4(i[4],zero,s3,w0[4]);
	mux2 m5(i[5],zero,s3,w0[5]);
	mux2 m6(i[6],zero,s3,w0[6]);
	mux2 m7(i[7],zero,s3,w0[7]);
	mux2 m8(i[8],i[0],s3,w0[8]);
	mux2 m9(i[9],i[1],s3,w0[9]);
	mux2 m10(i[10],i[2],s3,w0[10]);
	mux2 m11(i[11],i[3],s3,w0[11]);
	mux2 m12(i[12],i[4],s3,w0[12]);
	mux2 m13(i[13],i[5],s3,w0[13]);
	mux2 m14(i[14],i[7],s3,w0[14]);
	mux2 m15(i[15],i[8],s3,w0[15]);
	
	//level 2
	mux2 m16(w0[0],zero,s2,w1[0]);
	mux2 m17(w0[1],zero,s2,w1[1]);
	mux2 m18(w0[2],zero,s2,w1[2]);
	mux2 m19(w0[3],zero,s2,w1[3]);
	mux2 m20(w0[4],w0[0],s2,w1[4]);
	mux2 m21(w0[5],w0[1],s2,w1[5]);
	mux2 m22(w0[6],w0[2],s2,w1[6]);
	mux2 m23(w0[7],w0[3],s2,w1[7]);
	mux2 m24(w0[8],w0[4],s2,w1[8]);
	mux2 m25(w0[9],w0[5],s2,w1[9]);
	mux2 m26(w0[10],w0[6],s2,w1[10]);
	mux2 m27(w0[11],w0[7],s2,w1[11]);
	mux2 m28(w0[12],w0[8],s2,w1[12]);
	mux2 m29(w0[13],w0[9],s2,w1[13]);
	mux2 m30(w0[14],w0[10],s2,w1[14]);
	mux2 m31(w0[15],w0[11],s2,w1[15]);
	
	//level 3
	mux2 m32(w1[0],zero,s1,w2[0]);
	mux2 m33(w1[1],zero,s1,w2[1]);
	mux2 m34(w1[2],w1[0],s1,w2[2]);
	mux2 m35(w1[3],w1[1],s1,w2[3]);
	mux2 m36(w1[4],w1[2],s1,w2[4]);
	mux2 m37(w1[5],w1[3],s1,w2[5]);
	mux2 m38(w1[6],w1[4],s1,w2[6]);
	mux2 m39(w1[7],w1[5],s1,w2[7]);
	mux2 m40(w1[8],w1[6],s1,w2[8]);
	mux2 m41(w1[9],w1[7],s1,w2[9]);
	mux2 m42(w1[10],w1[8],s1,w2[10]);
	mux2 m43(w1[11],w1[9],s1,w2[11]);
	mux2 m44(w1[12],w1[10],s1,w2[12]);
	mux2 m45(w1[13],w1[11],s1,w2[13]);
	mux2 m46(w1[14],w1[12],s1,w2[14]);
	mux2 m47(w1[15],w1[13],s1,w2[15]);
	
	//level 4
	mux2 m48(w2[0],zero,s0,o[0]);
	mux2 m49(w2[1],w2[0],s0,o[1]);
	mux2 m50(w2[2],w2[1],s0,o[2]);
	mux2 m51(w2[3],w2[2],s0,o[3]);
	mux2 m52(w2[4],w2[3],s0,o[4]);
	mux2 m53(w2[5],w2[4],s0,o[5]);
	mux2 m54(w2[6],w2[5],s0,o[6]);
	mux2 m55(w2[7],w2[6],s0,o[7]);
	mux2 m56(w2[8],w2[7],s0,o[8]);
	mux2 m57(w2[9],w2[8],s0,o[9]);
	mux2 m58(w2[10],w2[9],s0,o[10]);
	mux2 m59(w2[11],w2[10],s0,o[11]);
	mux2 m60(w2[12],w2[11],s0,o[12]);
	mux2 m61(w2[13],w2[12],s0,o[13]);
	mux2 m62(w2[14],w2[13],s0,o[14]);
	mux2 m63(w2[15],w2[14],s0,o[15]);
	
endmodule

module barrel_shifter_right16(input wire [15:0] i,input wire s0,s1,s2,output wire [15:0] o)
	wire zero;
	wire [15:0] w0,w1,w2;
	assign zero = 1'b0;
	
	//level 1
	mux2 m0(i[0],i[8],s3,w0[0]);
	mux2 m1(i[1],i[9],s3,w0[1]);
	mux2 m2(i[2],i[10],s3,w0[2]);
	mux2 m3(i[3],i[11],s3,w0[3]);
	mux2 m4(i[4],i[12],s3,w0[4]);
	mux2 m5(i[5],i[13],s3,w0[5]);
	mux2 m6(i[6],i[14],s3,w0[6]);
	mux2 m7(i[7],i[15],s3,w0[7]);
	mux2 m8(i[8],zero,s3,w0[8]);
	mux2 m9(i[9],zero,s3,w0[9]);
	mux2 m10(i[10],zero,s3,w0[10]);
	mux2 m11(i[11],zero,s3,w0[11]);
	mux2 m12(i[12],zero,s3,w0[12]);
	mux2 m13(i[13],zero,s3,w0[13]);
	mux2 m14(i[14],zero,s3,w0[14]);
	mux2 m15(i[15],zero,s3,w0[15]);
	
	//level 2
	mux2 m16(w0[0],w0[4],s2,w1[0]);
	mux2 m17(w0[1],w0[5],s2,w1[1]);
	mux2 m18(w0[2],w0[6],s2,w1[2]);
	mux2 m19(w0[3],w0[7],s2,w1[3]);
	mux2 m20(w0[4],w0[8],s2,w1[4]);
	mux2 m21(w0[5],w0[9],s2,w1[5]);
	mux2 m22(w0[6],w0[10],s2,w1[6]);
	mux2 m23(w0[7],w0[11],s2,w1[7]);
	mux2 m24(w0[8],w0[12],s2,w1[8]);
	mux2 m25(w0[9],w0[13],s2,w1[9]);
	mux2 m26(w0[10],w0[14],s2,w1[10]);
	mux2 m27(w0[11],w0[15],s2,w1[11]);
	mux2 m28(w0[12],zero,s2,w1[12]);
	mux2 m29(w0[13],zero,s2,w1[13]);
	mux2 m30(w0[14],zero,s2,w1[14]);
	mux2 m31(w0[15],zero,s2,w1[15]);
	
	//level 3
	mux2 m32(w1[0],w1[2],s1,w2[0]);
	mux2 m33(w1[1],w1[3],s1,w2[1]);
	mux2 m34(w1[2],w1[4],s1,w2[2]);
	mux2 m35(w1[3],w1[5],s1,w2[3]);
	mux2 m36(w1[4],w1[6],s1,w2[4]);
	mux2 m37(w1[5],w1[7],s1,w2[5]);
	mux2 m38(w1[6],w1[8],s1,w2[6]);
	mux2 m39(w1[7],w1[9],s1,w2[7]);
	mux2 m40(w1[8],w1[10],s1,w2[8]);
	mux2 m41(w1[9],w1[11],s1,w2[9]);
	mux2 m42(w1[10],w1[12],s1,w2[10]);
	mux2 m43(w1[11],w1[13],s1,w2[11]);
	mux2 m44(w1[12],w1[14],s1,w2[12]);
	mux2 m45(w1[13],w1[15],s1,w2[13]);
	mux2 m46(w1[14],zero,s1,w2[14]);
	mux2 m47(w1[15],zero,s1,w2[15]);
	
	//level 4
	mux2 m48(w2[0],w2[1],s0,o[0]);
	mux2 m49(w2[1],w2[2],s0,o[1]);
	mux2 m50(w2[2],w2[3],s0,o[2]);
	mux2 m51(w2[3],w2[4],s0,o[3]);
	mux2 m52(w2[4],w2[5],s0,o[4]);
	mux2 m53(w2[5],w2[6],s0,o[5]);
	mux2 m54(w2[6],w2[7],s0,o[6]);
	mux2 m55(w2[7],w2[8],s0,o[7]);
	mux2 m56(w2[8],w2[9],s0,o[8]);
	mux2 m57(w2[9],w2[10],s0,o[9]);
	mux2 m58(w2[10],w2[11],s0,o[10]);
	mux2 m59(w2[11],w2[12],s0,o[11]);
	mux2 m60(w2[12],w2[13],s0,o[12]);
	mux2 m61(w2[13],w2[14],s0,o[13]);
	mux2 m62(w2[14],w2[15],s0,o[14]);
	mux2 m63(w2[15],zero,s0,o[15]);
	
endmodule

module barrel_shifter16(input wire [15:0] i,input wire shift_sel,s0,s1,s2,output wire [15:0] o0,o1)
	wire [15:0] l,r;
	demux1_2_16(i,shift_sel,l,r);
	barrel_shifter_left16(l,s0,s1,s2,o0);
	barrel_shifter_right16(r,s0,s1,s2,o1);
endmodule
