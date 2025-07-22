module SR_latch(S,R,qb,q);
	input S,R;
	output q,qb;
	
	assign q=~(R&qb);
	assign qb=~(S&q);
endmodule

module dut_SR_latch;
	reg S,R;
	wire q,qb;
	SR_latch LAT (S,R,qb,q);
	initial 
		begin
		$monitor($time, " S=%b  R=%b Q=%b Qbar=%b", S,R,q,qb);
		S=1'b0;R=1'b1;
		#5 S=1'b1; R=1'b0;
		#5 S=1'b1; R=1'b1;
		#5 S=1'b0; R=1'b0;
	end
endmodule
