// The following modeule does the operations of both left and right barrel shifter
// when shift_sel = 0 => left shift
// when shift_sel = 1 => right shift

module barrel_shifter16(input wire [15:0] i,input wire shift_sel,s0,s1,s2,s3,output wire [15:0] o);
	wire [15:0] l,r,o0,o1;
	demux1_2_16 demux2_1(i,shift_sel,l,r);
	barrel_shifter_left16 left_shifter(l,s0,s1,s2,s3,o0);
	barrel_shifter_right16 right_shifter(r,s0,s1,s2,s3,o1);
	mux2_1_16 mux1_2(o0,o1,shift_sel,o);
endmodule
