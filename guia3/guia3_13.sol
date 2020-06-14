Problem:    guia3_13
Rows:       36
Columns:    35 (35 integer, 30 binary)
Non-zeros:  146
Status:     INTEGER OPTIMAL
Objective:  z = 250 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 z                         250                             
     2 llegadaDesde[F]
                                   1             1             = 
     3 llegadaDesde[C1]
                                   1             1             = 
     4 llegadaDesde[C2]
                                   1             1             = 
     5 llegadaDesde[C3]
                                   1             1             = 
     6 llegadaDesde[C4]
                                   1             1             = 
     7 llegadaDesde[C5]
                                   1             1             = 
     8 salidaDesde[F]
                                   1             1             = 
     9 salidaDesde[C1]
                                   1             1             = 
    10 salidaDesde[C2]
                                   1             1             = 
    11 salidaDesde[C3]
                                   1             1             = 
    12 salidaDesde[C4]
                                   1             1             = 
    13 salidaDesde[C5]
                                   1             1             = 
    14 evitarCiclos[C1,C2]
                                   1                           4 
    15 evitarCiclos[C1,C3]
                                   3                           4 
    16 evitarCiclos[C1,C4]
                                   4                           4 
    17 evitarCiclos[C1,C5]
                                   2                           4 
    18 evitarCiclos[C2,C1]
                                   4                           4 
    19 evitarCiclos[C2,C3]
                                   2                           4 
    20 evitarCiclos[C2,C4]
                                  -2                           4 
    21 evitarCiclos[C2,C5]
                                   1                           4 
    22 evitarCiclos[C3,C1]
                                  -3                           4 
    23 evitarCiclos[C3,C2]
                                  -2                           4 
    24 evitarCiclos[C3,C4]
                                  -4                           4 
    25 evitarCiclos[C3,C5]
                                   4                           4 
    26 evitarCiclos[C4,C1]
                                   1                           4 
    27 evitarCiclos[C4,C2]
                                   2                           4 
    28 evitarCiclos[C4,C3]
                                   4                           4 
    29 evitarCiclos[C4,C5]
                                   3                           4 
    30 evitarCiclos[C5,C1]
                                  -2                           4 
    31 evitarCiclos[C5,C2]
                                   4                           4 
    32 evitarCiclos[C5,C3]
                                   1                           4 
    33 evitarCiclos[C5,C4]
                                  -3                           4 
    34 antes43                    -4                          -0 
    35 antes25                    -1                          -0 
    36 antes23                    -2                          -0 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 Y[F,C1]      *              0             0             1 
     2 Y[F,C2]      *              0             0             1 
     3 Y[F,C3]      *              1             0             1 
     4 Y[F,C4]      *              0             0             1 
     5 Y[F,C5]      *              0             0             1 
     6 Y[C1,F]      *              0             0             1 
     7 Y[C1,C2]     *              0             0             1 
     8 Y[C1,C3]     *              0             0             1 
     9 Y[C1,C4]     *              1             0             1 
    10 Y[C1,C5]     *              0             0             1 
    11 Y[C2,F]      *              0             0             1 
    12 Y[C2,C1]     *              1             0             1 
    13 Y[C2,C3]     *              0             0             1 
    14 Y[C2,C4]     *              0             0             1 
    15 Y[C2,C5]     *              0             0             1 
    16 Y[C3,F]      *              0             0             1 
    17 Y[C3,C1]     *              0             0             1 
    18 Y[C3,C2]     *              0             0             1 
    19 Y[C3,C4]     *              0             0             1 
    20 Y[C3,C5]     *              1             0             1 
    21 Y[C4,F]      *              1             0             1 
    22 Y[C4,C1]     *              0             0             1 
    23 Y[C4,C2]     *              0             0             1 
    24 Y[C4,C3]     *              0             0             1 
    25 Y[C4,C5]     *              0             0             1 
    26 Y[C5,F]      *              0             0             1 
    27 Y[C5,C1]     *              0             0             1 
    28 Y[C5,C2]     *              1             0             1 
    29 Y[C5,C3]     *              0             0             1 
    30 Y[C5,C4]     *              0             0             1 
    31 U[C2]        *              2             0               
    32 U[C1]        *              3             0               
    33 U[C3]        *              0             0               
    34 U[C4]        *              4             0               
    35 U[C5]        *              1             0               

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
