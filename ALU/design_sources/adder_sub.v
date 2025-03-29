module Adder_Sub(
    input sub,
    input [15:0] A,B,
    output [16:0] Sum
    );
    wire [15:0] s;
    wire [16:0] c;
    assign s = {16{sub}} ^ B;
    fulladder fa0(.A(A[0]), .B(s[0]), .C(sub), . Sum(Sum[0]), .Carry(c[1]));
    genvar i;
    generate
        for(i=1;i<16;i=i+1) begin: fa
            fulladder fl(.A(A[i]), .B(s[i]), .C(c[i]), . Sum(Sum[i]), .Carry(c[i+1]));
        end
    endgenerate
    xor g1(Sum[16],sub,c[16]);
endmodule