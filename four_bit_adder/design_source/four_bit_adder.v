`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 18:13:23
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
    input [3:0] A,B,
    output [3:0] sum,
    output carry
);
    wire c0,c1,c2;
    fulladder m1(.sum(sum[0]),.carry(c0),.a(A[0]),.b(B[0]),.c(1'b0));
    fulladder m2(.sum(sum[1]), .carry(c1),.a(A[1]),.b(B[1]),.c(c0));
    fulladder m3(.sum(sum[2]), .carry(c2),.a(A[2]),.b(B[2]),.c(c1));
    fulladder m4(.sum(sum[3]), .carry(carry),.a(A[3]),.b(B[3]),.c(c2));
endmodule
