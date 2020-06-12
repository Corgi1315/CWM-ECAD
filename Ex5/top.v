//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:Juetong Liang
// Date: 12/6/2020
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////
module traffic(
	input clk,
	output red,
	output amber,
	output green);
	

	
	

	always @(posedge clk)
	begin
		if ((red==1'b1)&&(amber==1'b0)&&(green==1'b0))
			begin
			red<=1'b1;
			amber<=1'b1;
			green<=1'b0;
			end
		else
			begin
				if ((red==1'b1)&&(amber==1'b1)&&(green==1'b0))
					begin
					red<=1'b0;
					amber<=1'b0;
					green<=1'b1;
					end
				else
					begin
					if ((red==1'b0)&&(amber==1'b0)&&(green==1'b1))
						begin
							red<=1'b0;
							amber<=1'b1;
							green<=1'b0;
						end
					else
						begin
						red<=1'b1;
						amber<=1'b0;
						green<=1'b0;
						end
					end
			end
	end

endmodule


		
		
