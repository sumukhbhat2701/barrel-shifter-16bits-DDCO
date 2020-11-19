`timescale 1 ns / 100 ps

module tb;

reg [15:0] i;
reg s0,s1,s2,s3,shift_sel;
wire [15:0] o;

initial
begin
$dumpfile("barrel_shifter.vcd");
$dumpvars(0, tb);
end

barrel_shifter16 barrelShifter(.i(i),.s0(s0),.s1(s1),.s2(s2),.s3(s3),.shift_sel(shift_sel),.o(o));

initial begin

i=16'ha861;
shift_sel = 1'b1;
s0 = 1'b0;
s1 = 1'b1;
s2 = 1'b1;
s3 = 1'b0;
#10

i=16'b1111111111111111;
shift_sel = 1'b0;
s0 = 1'b1;
s1 = 1'b0;
s2 = 1'b0;
s3 = 1'b0;
#10

i=16'b0000000000000000;
shift_sel = 1'b1;
s0 = 1'b0;
s1 = 1'b1;
s2 = 1'b1;
s3 = 1'b0;
#10


i=16'b1000000000000000;
shift_sel = 1'b1;
s0 = 1'b1;
s1 = 1'b1;
s2 = 1'b1;
s3 = 1'b1;
#10

i=16'b0000000000000001;
shift_sel = 1'b0;
s0 = 1'b1;
s1 = 1'b1;
s2 = 1'b1;
s3 = 1'b1;
#10


#100 $finish;
end

endmodule