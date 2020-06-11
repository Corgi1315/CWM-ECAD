//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:Juetong Liang
// Date: 9/6/2020
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
module top_tb();

	reg rst;
	reg clk;
	reg button;
	wire [2:0]throw;
	
	parameter clk_period=10;
		initial 
			begin
			clk=1'b0;
			forever
			#(clk_period/2)clk=~clk;
			end

	initial 
	begin
	rst=0;
	button=0;
	#10
	button=1;
	#10
	button=0;
	#10
	rst=0;
	end

dice top(rst,clk,button,throw);
endmodule

