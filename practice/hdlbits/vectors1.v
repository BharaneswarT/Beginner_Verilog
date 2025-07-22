/* A 32-bit vector can be viewed as containing 4 bytes (bits [31:24], [23:16], etc.). Build a circuit that will reverse the byte ordering of the 4-byte word.

AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa   */

module top_module( 
    input [31:0] in,
    output [31:0] out );
	assign out [31:24] = in[0:7];
	assign outn[23:16] = in[8:15];
	assign out[15:8] = i[16:23];
	assign out[7:0] = in[24:31];
	
    // assign out[31:24] = ...;

endmodule
	
