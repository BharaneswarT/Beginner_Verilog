module Level_Sensitive_D_latch(D,q,en);
	input D,en;
	output q;
	assign q= en?D:q;
endmodule
