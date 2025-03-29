module logical_shifter(
    input lnr,
    input [15:0] A,
    output [16:0] out
    );
    assign out = lnr ? {A[14:0],1'b0} : {A[15],A[15:1]};    
endmodule