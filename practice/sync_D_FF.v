module dff(d,set,reset,clk,q,qb);
	input d,set,reset,clk;
	output reg q;
	output qb;
		
	initial
		assign qb=~q;
	always @(posedge clk)
		begin
			if (reset==0) q<=0;
			else if(set==0) q<=1;
			else q<=d;
		end
endmodule
