Problem:    guia2_7
Rows:       7
Columns:    3
Non-zeros:  10
Status:     OPTIMAL
Objective:  z = 1000 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 z            B           1000                             
     2 prodMT       NS             0            -0             =             5 
     3 tiempoM1     B            180                         300 
     4 tiempoM2     B            220                         300 
     5 matPrimaM1   NU           300                         300       3.33333 
     6 mes1         B             90            70               
     7 mes2         NL           110           110                       < eps

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 M1           B             90             0               
     2 M2           B            110             0               
     3 MT           B            200             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 0.00e+00 on column 0
        max.rel.err = 0.00e+00 on column 0
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
