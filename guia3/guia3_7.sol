Problem:    guia3_7
Rows:       44
Columns:    30 (9 integer, 9 binary)
Non-zeros:  110
Status:     INTEGER OPTIMAL
Objective:  Z = 263445.5 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 Z                      263446                             
     2 ventaA1Min                  0                          -0 
     3 ventaA1Max                  0                          -0 
     4 ventaA2Min                  0                          -0 
     5 ventaA2Max                  0                          -0 
     6 ventaA3Min              -1000                          -0 
     7 ventaA3Max            -498000                          -0 
     8 ventaAT                     1             1             = 
     9 ventaTotalA                 0            -0             = 
    10 excesoDefecto
                                   0            -0             = 
    11 excesoMin                   0                          -0 
    12 excesoMax                   0                          -0 
    13 defectoMin            -199.89                          -0 
    14 defectoMax            -499800                          -0 
    15 relEXDE                     1                           1 
    16 ventasAC              -501200                          -0 
    17 ventasAB              -501000                          -0 
    18 demandas[A]              2000                        2000 
    19 demandas[B]              3000                        3000 
    20 demandas[C]            3199.9                        4000 
    21 compraB1Min                 0                          -0 
    22 compraB1Max                 0                          -0 
    23 compraB1bMin                0                          -0 
    24 compraB1bMax                0                          -0 
    25 compraB2aMin             -400                          -0 
    26 compraB2aMax            -99.9                          -0 
    27 compraB2bMin                0                          -0 
    28 compraB2bMax                0                          -0 
    29 compraB1                    0            -0             = 
    30 compraB2                    0            -0             = 
    31 compraBTotal                0            -0             = 
    32 compraC1Min                 0                          -0 
    33 compraC1Max                 0                          -0 
    34 compraC2aMin                0                          -0 
    35 compraC2aMax                0                          -0 
    36 compraC2bMin           -499.9                          -0 
    37 compraC2bMax                0                          -0 
    38 compraC3Min                 0                          -0 
    39 compraC3Max                 0                          -0 
    40 compraCT                    1             1             = 
    41 compraCTotal                0            -0             = 
    42 compraVenta[A]
                                 -50           -50             = 
    43 compraVenta[B]
                                -100          -100             = 
    44 compraVenta[C]
                                -200          -200             = 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 VEN[C]                 3199.9             0               
     2 VEN[B]                   3000             0               
     3 VEN[A]                   2000             0               
     4 COM[A]                   1950             0               
     5 COM[B]                   2900             0               
     6 COM[C]                 2999.9             0               
     7 A[A1]                       0             0               
     8 A[A2]                       0             0               
     9 A[A3]                    2000             0               
    10 YA[A1]       *              0             0             1 
    11 YA[A2]       *              0             0             1 
    12 YA[A3]       *              1             0             1 
    13 YC[C1]       *              0             0             1 
    14 YC[C2a]      *              0             0             1 
    15 YC[C2b]      *              1             0             1 
    16 YC[C3]       *              0             0             1 
    17 C[C1]                       0             0               
    18 C[C2a]                      0             0               
    19 C[C2b]                 2999.9             0               
    20 C[C3]                       0             0               
    21 B[B1a]                      0             0               
    22 B[B2a]                   2900             0               
    23 B[B2b]                      0             0               
    24 B[B1b]                      0             0               
    25 CB[B1]                      0             0               
    26 CB[B2]                   2900             0               
    27 EXCESO                      0             0               
    28 DEFECTO                 199.9             0               
    29 YEX          *              0             0             1 
    30 YDE          *              1             0             1 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 2.32e-11 on row 37
        max.rel.err = 2.32e-11 on row 37
        High quality

End of output
