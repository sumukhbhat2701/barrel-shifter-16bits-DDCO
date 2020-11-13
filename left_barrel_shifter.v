// 16 bit left barrel shifter
module barrel_shifter_left16(input wire [15:0] i,input wire s0,s1,s2,s3,output wire [15:0] o);
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



