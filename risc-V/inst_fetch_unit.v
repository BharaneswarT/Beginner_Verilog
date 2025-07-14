module instruction_fetch_unit(
	input clk,reset,
	input beq,                                                      //control signal for "branch if equal
	input bneq,							//control signal for "branch if not equal
	input bge,							//control signal for "branch greater or equal"
	input blt,							//control signal for "branch less than"
	input jump,							//control signal for enabling jump operation
	input [31:0] imm_address,					//immediate address for branch instruction	
	input [31:0] imm_address_jump,					//immediate address for jump instruction
	output reg [31:0] pc,current_pc
	);
	
	//this is for incrementing program counter
	
	always @(posedge clk)
	begin
		if (reset ==1)
			pc <= 0;
		else if(beq ==0 && bneq ==0 && bge == 0 && blt ==0 && jump ==0)
			pc <= pc+4;
		else if (beq==1 || bneq==1 || bge ==1 || blt ==1 )
			pc <= pc+imm_address;
		else if (jump)
			pc<= pc+imm_address_jump;
	end
	
	
	//This logic is for storing return address
	
	always @(posedge clk)
		begin
		if (reset)
			current_pc <= 0;
		else if (reset==0 && jump ==0 )
			current_pc<=pc+4;
		else 
			current_pc <= current_pc;
		end
endmodule
