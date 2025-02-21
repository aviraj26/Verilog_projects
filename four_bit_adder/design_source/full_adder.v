module fulladder(
    input a,b,c,
    output sum,carry
);
    wire sum1,ca1,ca2;
    halfadder m1(.sum(sum1), .carry(ca1), .a(a), .b(b));
    halfadder m2(.sum(sum), .carry(ca2), .a(sum1), .b(c));
    or g1(carry, ca1,ca2);
endmodule