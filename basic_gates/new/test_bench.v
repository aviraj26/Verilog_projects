`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 14:43:26
// Design Name: 
// Module Name: test_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_bench;
    wire o_and, o_or, o_nor, o_nand, o_xor, o_xnor;
    reg a,b;
    or_gate   g1(o_or, a, b); 
    and_gate  g2(o_and, a, b); 
    nor_gate  g3(o_nor, a, b); 
    nand_gate g4(o_nand, a, b); 
    xor_gate  g5(o_xor, a, b); 
    xnor_gate g6(o_xnor, a, b);
    initial begin
           a = 1'b0; b = 1'b0;
        #5 a = 1'b0; b = 1'b1; 
        #5 a = 1'b1; b = 1'b0; 
        #5 a = 1'b1; b = 1'b1;
        #5 $finish;
    end
endmodule
