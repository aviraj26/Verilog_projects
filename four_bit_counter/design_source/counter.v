`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2025 14:23:39
// Design Name: 
// Module Name: counter
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


module counter(
    output reg [3:0] count,
    input ena, clk, syn_reset
    );
    always @(posedge clk) begin
        if(syn_reset) count = 4'b0;
        else begin
            if(ena) count = count + 1;
        end
    end
endmodule
