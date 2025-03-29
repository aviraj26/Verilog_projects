module ALU(
    input [15:0] A, B,
    input [3:0] mode,
    output reg [16:0] out
    );
    parameter add_mode    = 4'h0,
              sub_mode    = 4'h1,
              ll          = 4'h2,
              lr          = 4'h3,
              bitwise_and = 4'h4,
              bitwise_or  = 4'h5,
              bitwise_xor = 4'h6,
              comple      = 4'h7,
              decr        = 4'h8,
              incr        = 4'h9;
    wire [15:0] lslr;
    wire [16:0] add_sub;
    wire sub,lnr;
    assign sub = (mode == sub_mode);
    assign lnr = (mode == ll);
    Adder_Sub as(sub, A, B, add_sub);
    logical_shifter ls(lnr, A, lslr);
    always @(*) begin
        case(mode)
            add_mode:    out = add_sub;
            sub_mode:    out = add_sub;
            ll:          out = lslr;
            lr:          out = lslr;
            bitwise_and: out = A & B;
            bitwise_or:  out = A | B;
            bitwise_xor: out = A ^ B;
            comple:      out = ~A;
            decr:        out = (A==0) ? 16'hffff : A - 1;
            incr:        out = A + 1; 
        endcase
    end
endmodule
