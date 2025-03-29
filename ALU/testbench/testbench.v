module testbench;
    reg [15:0] A,B;
    reg [3:0] mode;
    wire [16:0] out;
    ALU uut(A, B, mode, out);
    initial begin
        mode = 0;
        #2 mode = 4'h0;
        #5 A = 4'h5; B = 4'h6;
        #2 mode = 4'h1;
        #5 A = 4'h8; B = 4'h6;
        #5 A = 4'h3; B = 4'h5;
        #2 mode = 4'h2;
        #5 A = 4'h5;
        #2 mode = 4'h3;
        #5 A = 4'ha;
        #2 mode = 4'h4;
        #5 A = 4'hf; B = 4'h7;
        #2 mode = 4'h5;
        #5 A = 4'ha; B = 4'h8;
        #2 mode = 4'h6;
        #5 A = 4'h5; B = 4'h6;
        #2 mode = 4'h7;
        #5 A = 4'hc;
        #2 mode = 4'h8;
        #5 A = 4'h5;
        #2 mode = 4'h9;
        #5 A = 4'h5;
        #10 $finish;
    end
endmodule
