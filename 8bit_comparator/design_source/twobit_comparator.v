module twobit_comparator(
    output eq, a_less_b, a_greater_b,
    input [1:0] A, B
    );
    wire a0_gt_b0, a1_gt_b1, a1_lt_b1, a0_lt_bt, a1_eq_b1, a0_eq_b0, a_gt_eq_b, a_lt_eq_b;
    and  g1(a1_gt_b1, A[1], ~B[1]);
    and  g2(a0_gt_b0, A[0], ~B[0]);  
    and  g3(a1_lt_b1, ~A[1], B[1]);
    and  g4(a0_lt_b0, ~A[0], B[0]);
    xnor g5(a1_eq_b1,  A[1], B[1]);
    xnor g6(a0_eq_b0,  A[0], B[0]);
    and  g7(eq, a1_eq_b1, a0_eq_b0);
    and  g8(a_gt_eq_b, a1_eq_b1, a0_gt_b0);
    and  g9(a_lt_eq_b, a1_eq_b1, a0_lt_b0);
    or   g10(a_greater_b, a_gt_eq_b, a1_gt_b1);
    or   g11(a_less_b, a_lt_eq_b, a1_lt_b1);
endmodule