module updown_counter_8bit(
	input clr,clk,ld,
	input [7:0] d_in,
	input [1:0] mode,
	output reg [7:0] count,
	);
	
	always @ (posedge clk)
		begin
		if clr==1
			count <= 0;
		else if (ld)
			count <= d_in;
		else if (mode ==0 )
			count <= count-1;
		else 
			count <= count+1;
		end
endmodule 
