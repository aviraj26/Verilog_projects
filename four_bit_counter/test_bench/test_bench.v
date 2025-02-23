`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2025 14:26:33
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
    reg clk, ena, syn_reset;
    wire [3:0] count;
    counter uut(.count(count), .clk(clk), .ena(ena), .syn_reset(syn_reset));
    always #5 clk = ~clk;
    initial begin
        ena = 1'b1;
        syn_reset = 1'b1;
        clk = 1'b0;
        #7 syn_reset = 1'b0;
        #100 syn_reset = 1'b1;
        #10 syn_reset = 1'b0;
        #10 ena = 1'b0;
        #10 ena = 1'b1;
        #200 $finish;
    end
endmodule
