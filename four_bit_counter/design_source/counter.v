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
