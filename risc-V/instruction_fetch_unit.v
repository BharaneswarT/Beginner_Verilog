module instruction_fetch_unit(
	input clk,reg,
	input beq,bneq,bge,blt,jump,
	input [31:0] imm_address, imm_address_jump,
	output reg [31:0] pc, current_pc,
);	

