/*

#This code will create a 16 bit multiplexer"
module mux(data,select, out);
	input data[15:0];
	input select[3:0];
	assign out=data[select];
	
endmodule
*/

#This code will generate 2x1 multiplexer since we used conditional statements

module gen_mux(a,b,sel,f);
	input [15:0]a,b;
	input sel;
	output [3;0]f; 
	assign f= s? a:b;
endmodule

since we used 16 bit variables, 16 (2x1) mux will be generated
