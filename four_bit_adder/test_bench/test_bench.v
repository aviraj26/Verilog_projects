`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 18:16:13
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
    reg [3:0] A,B;
    wire [3:0] Sum;
    wire carry;
    four_bit_adder dut(.A(A), .B(B), .sum(Sum), .carry(carry));
    initial begin
            A = 4'b1010; B = 4'b0011;
        #10 A = 4'b0010; B = 4'b1111;
        #10 A = 4'b0110; B = 4'b1011;
        #10 $finish;
    end
endmodule
