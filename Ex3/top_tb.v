//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:Juetong Liang
// Date: 9/6/2020
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    


//Todo: Regitsers and wires
reg rst,direction,enable,clk,counter_out[7:0];
	initial begin
	rst=1;
	enable=1;
	direction=1;
	#10 rst=0;
	enable=1;
	direction=1;
	#10 rst=0;
	enable=0;
	direction=1;
	#10 rst=0;
		enable=1;
		direction=0;
	#10 rst=0;
		enable=0;
		direction=0;;
	end

//Todo: Clock generation
	parameter clk_period=10;
		initial begin
			clk=1'b0;
			forever
				#(clk_period/2)clk=~clk;
		end
	


//Todo: Instantiate counter module
counter top(clk,rst,enable,direction);
 
endmodule 
