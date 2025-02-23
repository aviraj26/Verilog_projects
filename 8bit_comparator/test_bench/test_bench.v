`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2025 15:06:20
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
    reg [7:0] A,B;
    wire eq, lt, gt;
    comparator dut(.A(A), .B(B), .eq(eq), .a_less_b(lt), .a_gt_b(gt));
    initial begin
            A = 8'hff; B = 8'h12;
        #10 A = 8'hf1; B = 8'hf3;
        #10 A = 8'haa; B = 8'haa;
        #10 $finish;
    end
endmodule
