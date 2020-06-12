//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name:Juetong Liang
// Date: 12/6/2020
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
module top_tb();

	reg clk;
	reg red;
	reg amber;
	reg green;

	parameter clk_period=10;
		initial 
			begin
			clk=1'b0;
			forever
			#(clk_period/2)clk=~clk;
			end

traffic top(clk);
endmodule

	
