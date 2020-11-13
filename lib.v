// Some helper circuits

//2:1 mux
module mux2(input wire i0,i1,j,output wire o);
	assign o = (j==0)?i0:i1;
endmodule

//1:2 demux
module demux2 (input wire i, j, output wire o0, o1);
  assign o0 = (j==0)?i:1'b0;
  assign o1 = (j==1)?i:1'b0;
endmodule

//a demux that selects one bus input of 16 wires to one of the 2 bus with 16 wires each
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

//a mux that selects one of 2 bus inputs of 16 wires each to one bus of 16 wires each
module mux2_1_16(input wire [0:15] i0_16,i1_16,input wire sel,output wire [0:15] o_16);

	mux2 mux_unit_00(i0_16[0],i1_16[0],sel,o_16[0]);
	mux2 mux_unit_01(i0_16[1],i1_16[1],sel,o_16[1]);
	mux2 mux_unit_02(i0_16[2],i1_16[2],sel,o_16[2]);
	mux2 mux_unit_03(i0_16[3],i1_16[3],sel,o_16[3]);
	mux2 mux_unit_04(i0_16[4],i1_16[4],sel,o_16[4]);
	mux2 mux_unit_05(i0_16[5],i1_16[5],sel,o_16[5]);
	mux2 mux_unit_06(i0_16[6],i1_16[6],sel,o_16[6]);
	mux2 mux_unit_07(i0_16[7],i1_16[7],sel,o_16[7]);
	mux2 mux_unit_08(i0_16[8],i1_16[8],sel,o_16[8]);
	mux2 mux_unit_09(i0_16[9],i1_16[9],sel,o_16[9]);
	mux2 mux_unit_10(i0_16[10],i1_16[10],sel,o_16[10]);
	mux2 mux_unit_11(i0_16[11],i1_16[11],sel,o_16[11]);
	mux2 mux_unit_12(i0_16[12],i1_16[12],sel,o_16[12]);
	mux2 mux_unit_13(i0_16[13],i1_16[13],sel,o_16[13]);
	mux2 mux_unit_14(i0_16[14],i1_16[14],sel,o_16[14]);
	mux2 mux_unit_15(i0_16[15],i1_16[15],sel,o_16[15]);

endmodule
