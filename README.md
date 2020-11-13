# barrel-shifter-16bits-DDCO
3rd sem DDCO project which simulates a 16 bit barrel shifter(both left and right) using iverilog

# Commands: 
Assuming iverilog and gtkwave is installed in the system, open the terminal in the folder where there the files are preset and run the following commands in order:
1. iverilog -o aout barrel_shifter.v lib.v left_barrel_shifter.v right_barrel_shifter.v testbench.v
2. vvp aout
3. gtkwave barrel_shifter.vcd
