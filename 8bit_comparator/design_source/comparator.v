module comparator(
    output eq, a_less_b, a_gt_b,
    input [7:0] A, B
    );
    wire eq1, eq2, lt1, lt2, gt1, gt2;
    wire eq_gt, eq_lt;
    fourbit_comparator c1(.eq(eq1), .a_less_b(lt1), .a_gt_b(gt1), .A(A[7:4]), .B(B[7:4]));
    fourbit_comparator c2(.eq(eq2), .a_less_b(lt2), .a_gt_b(gt2), .A(A[3:0]), .B(B[3:0]));
    and g1(eq, eq1, eq2);
    and g2(eq_gt, eq1, gt2);
    and g3(eq_lt, eq1, lt2);
    or  g4(a_gt_b, eq_gt, gt1);
    or  g5(a_less_b, eq_lt, lt1);
endmodule