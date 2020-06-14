Problem:    guia2_2
Rows:       17
Columns:    11
Non-zeros:  48
Status:     OPTIMAL
Objective:  Z = 37000 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 Z            B          37000                             
     2 maxYSA       NU          1000                        1000            35 
     3 maxYSC       NU          2000                        2000             1 
     4 maxYEA       B              0                        3000 
     5 alA          NS             0            -0             =           -40 
     6 alB          NS             0            -0             =           -40 
     7 mineralCuA   B           -640                          -0 
     8 mineralSnA   B           -390                          -0 
     9 mineralZnA   B            250            -0               
    10 mineralMinSnB
                    NL             0            -0                         -25 
    11 mineralMaxSnB
                    B           -300                          -0 
    12 mineralMnB   B            150            -0               
    13 mineralSnB   B          -1050                          -0 
    14 yacCu        NS             0            -0             =           -40 
    15 yacSn        NS             0            -0             =           -65 
    16 yacMn        NS             0            -0             =           -40 
    17 yacZn        NS             0            -0             =           -40 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 A            B           1300             0               
     2 B            B           1500             0               
     3 YSA          B           1000             0               
     4 YSC          B           2000             0               
     5 YEA          NL             0             0                       -8.75 
     6 CuA          B            400             0               
     7 SnA          NL             0             0                         -25 
     8 SnB          B            600             0               
     9 ZnA          B            900             0               
    10 ZnB          B              0             0               
    11 MnB          B            900             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 1.14e-13 on row 10
        max.rel.err = 9.47e-17 on row 10
        High quality

KKT.PB: max.abs.err = 2.63e-13 on column 10
        max.rel.err = 2.63e-13 on column 10
        High quality

KKT.DE: max.abs.err = 1.42e-14 on column 8
        max.rel.err = 1.08e-16 on column 8
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
