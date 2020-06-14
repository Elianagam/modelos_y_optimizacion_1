Problem:    guia1_3
Rows:       5
Columns:    2
Non-zeros:  9
Status:     UNDEFINED
Objective:  z = 0 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 z            B              0                             
     2 maqA         B              0                         200 
     3 maqB         B              0                         200 
     4 prodA        B              0            50               
     5 prodB        B              0            -0               

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 PA           NL             0             0                       < eps
     2 PB           NL             0             0                       < eps

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 5.00e+01 on row 4
        max.rel.err = 9.80e-01 on row 4
        PRIMAL SOLUTION IS INFEASIBLE

KKT.DE: max.abs.err = 1.20e+01 on column 1
        max.rel.err = 9.23e-01 on column 1
        DUAL SOLUTION IS WRONG

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
