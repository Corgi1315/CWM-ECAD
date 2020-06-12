//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name:Juetong Liang
// Date: 9/6/2020
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////
module dice (
	input rst,
	input clk,
	input button,
	output reg throw
	);

	reg [2:0] throw;

	always @(posedge clk)
		begin
		if (rst==0)
			begin
			throw<=3'b1;
			if (button==1)
				if (throw==(3'b110))
					throw<=3'b1;
				else
					throw<=throw+3'b1;
			else
				throw<=throw;
			end
		else
			begin
			throw<=3'b0;
			end
		end
endmodule

				
	
