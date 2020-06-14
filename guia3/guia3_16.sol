Problem:    guia3_16
Rows:       64
Columns:    91 (84 integer, 78 binary)
Non-zeros:  343
Status:     INTEGER OPTIMAL
Objective:  z = 175 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 z                         175                             
     2 llegadaDesde[EM]
                                   1             1             = 
     3 llegadaDesde[RE1]
                                   1             1             = 
     4 llegadaDesde[RE2]
                                   1             1             = 
     5 llegadaDesde[RE3]
                                   1             1             = 
     6 llegadaDesde[RE4]
                                   1             1             = 
     7 llegadaDesde[RE5]
                                   1             1             = 
     8 llegadaDesde[RE6]
                                   1             1             = 
     9 salidaDesde[EM]
                                   1             1             = 
    10 salidaDesde[RE1]
                                   1             1             = 
    11 salidaDesde[RE2]
                                   1             1             = 
    12 salidaDesde[RE3]
                                   1             1             = 
    13 salidaDesde[RE4]
                                   1             1             = 
    14 salidaDesde[RE5]
                                   1             1             = 
    15 salidaDesde[RE6]
                                   1             1             = 
    16 evitarCiclos[RE1,RE2]
                                   5                           5 
    17 evitarCiclos[RE1,RE3]
                                   1                           5 
    18 evitarCiclos[RE1,RE4]
                                  -2                           5 
    19 evitarCiclos[RE1,RE5]
                                   2                           5 
    20 evitarCiclos[RE1,RE6]
                                   3                           5 
    21 evitarCiclos[RE2,RE1]
                                   1                           5 
    22 evitarCiclos[RE2,RE3]
                                   2                           5 
    23 evitarCiclos[RE2,RE4]
                                   5                           5 
    24 evitarCiclos[RE2,RE5]
                                   3                           5 
    25 evitarCiclos[RE2,RE6]
                                   4                           5 
    26 evitarCiclos[RE3,RE1]
                                   5                           5 
    27 evitarCiclos[RE3,RE2]
                                  -2                           5 
    28 evitarCiclos[RE3,RE4]
                                  -3                           5 
    29 evitarCiclos[RE3,RE5]
                                   1                           5 
    30 evitarCiclos[RE3,RE6]
                                   2                           5 
    31 evitarCiclos[RE4,RE1]
                                   2                           5 
    32 evitarCiclos[RE4,RE2]
                                   1                           5 
    33 evitarCiclos[RE4,RE3]
                                   3                           5 
    34 evitarCiclos[RE4,RE5]
                                   4                           5 
    35 evitarCiclos[RE4,RE6]
                                   5                           5 
    36 evitarCiclos[RE5,RE1]
                                  -2                           5 
    37 evitarCiclos[RE5,RE2]
                                  -3                           5 
    38 evitarCiclos[RE5,RE3]
                                   5                           5 
    39 evitarCiclos[RE5,RE4]
                                  -4                           5 
    40 evitarCiclos[RE5,RE6]
                                   1                           5 
    41 evitarCiclos[RE6,RE1]
                                  -3                           5 
    42 evitarCiclos[RE6,RE2]
                                  -4                           5 
    43 evitarCiclos[RE6,RE3]
                                  -2                           5 
    44 evitarCiclos[RE6,RE4]
                                  -5                           5 
    45 evitarCiclos[RE6,RE5]
                                   5                           5 
    46 temperaruraInicial
                                   0            -0             = 
    47 regionTemp[RE1]
                                   0            -0             = 
    48 regionTemp[RE2]
                                   0            -0             = 
    49 regionTemp[RE3]
                                   0            -0             = 
    50 regionTemp[RE4]
                                   0            -0             = 
    51 regionTemp[RE5]
                                   0            -0             = 
    52 regionTemp[RE6]
                                   0            -0             = 
    53 temPorPosicion[RE1]
                                   1             1             = 
    54 temPorPosicion[RE2]
                                   1             1             = 
    55 temPorPosicion[RE3]
                                   1             1             = 
    56 temPorPosicion[RE4]
                                   1             1             = 
    57 temPorPosicion[RE5]
                                   1             1             = 
    58 temPorPosicion[RE6]
                                   1             1             = 
    59 temperatura1                0            -0             = 
    60 temperatura2                0            -0             = 
    61 temperatura3                0            -0             = 
    62 temperatura4                0            -0             = 
    63 temperatura5                0            -0             = 
    64 temperatura6                0            -0             = 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 Y[EM,RE1]    *              0             0             1 
     2 Y[EM,RE2]    *              0             0             1 
     3 Y[EM,RE3]    *              0             0             1 
     4 Y[EM,RE4]    *              0             0             1 
     5 Y[EM,RE5]    *              0             0             1 
     6 Y[EM,RE6]    *              1             0             1 
     7 Y[RE1,EM]    *              0             0             1 
     8 Y[RE1,RE2]   *              1             0             1 
     9 Y[RE1,RE3]   *              0             0             1 
    10 Y[RE1,RE4]   *              0             0             1 
    11 Y[RE1,RE5]   *              0             0             1 
    12 Y[RE1,RE6]   *              0             0             1 
    13 Y[RE2,EM]    *              0             0             1 
    14 Y[RE2,RE1]   *              0             0             1 
    15 Y[RE2,RE3]   *              0             0             1 
    16 Y[RE2,RE4]   *              1             0             1 
    17 Y[RE2,RE5]   *              0             0             1 
    18 Y[RE2,RE6]   *              0             0             1 
    19 Y[RE3,EM]    *              0             0             1 
    20 Y[RE3,RE1]   *              1             0             1 
    21 Y[RE3,RE2]   *              0             0             1 
    22 Y[RE3,RE4]   *              0             0             1 
    23 Y[RE3,RE5]   *              0             0             1 
    24 Y[RE3,RE6]   *              0             0             1 
    25 Y[RE4,EM]    *              1             0             1 
    26 Y[RE4,RE1]   *              0             0             1 
    27 Y[RE4,RE2]   *              0             0             1 
    28 Y[RE4,RE3]   *              0             0             1 
    29 Y[RE4,RE5]   *              0             0             1 
    30 Y[RE4,RE6]   *              0             0             1 
    31 Y[RE5,EM]    *              0             0             1 
    32 Y[RE5,RE1]   *              0             0             1 
    33 Y[RE5,RE2]   *              0             0             1 
    34 Y[RE5,RE3]   *              1             0             1 
    35 Y[RE5,RE4]   *              0             0             1 
    36 Y[RE5,RE6]   *              0             0             1 
    37 Y[RE6,EM]    *              0             0             1 
    38 Y[RE6,RE1]   *              0             0             1 
    39 Y[RE6,RE2]   *              0             0             1 
    40 Y[RE6,RE3]   *              0             0             1 
    41 Y[RE6,RE4]   *              0             0             1 
    42 Y[RE6,RE5]   *              1             0             1 
    43 W[P1,RE1]    *              0             0             1 
    44 W[P2,RE1]    *              0             0             1 
    45 W[P3,RE1]    *              0             0             1 
    46 W[P4,RE1]    *              1             0             1 
    47 W[P5,RE1]    *              0             0             1 
    48 W[P6,RE1]    *              0             0             1 
    49 W[P1,RE2]    *              0             0             1 
    50 W[P2,RE2]    *              0             0             1 
    51 W[P3,RE2]    *              0             0             1 
    52 W[P4,RE2]    *              0             0             1 
    53 W[P5,RE2]    *              1             0             1 
    54 W[P6,RE2]    *              0             0             1 
    55 W[P1,RE3]    *              0             0             1 
    56 W[P2,RE3]    *              0             0             1 
    57 W[P3,RE3]    *              1             0             1 
    58 W[P4,RE3]    *              0             0             1 
    59 W[P5,RE3]    *              0             0             1 
    60 W[P6,RE3]    *              0             0             1 
    61 W[P1,RE4]    *              0             0             1 
    62 W[P2,RE4]    *              0             0             1 
    63 W[P3,RE4]    *              0             0             1 
    64 W[P4,RE4]    *              0             0             1 
    65 W[P5,RE4]    *              0             0             1 
    66 W[P6,RE4]    *              1             0             1 
    67 W[P1,RE5]    *              0             0             1 
    68 W[P2,RE5]    *              1             0             1 
    69 W[P3,RE5]    *              0             0             1 
    70 W[P4,RE5]    *              0             0             1 
    71 W[P5,RE5]    *              0             0             1 
    72 W[P6,RE5]    *              0             0             1 
    73 W[P1,RE6]    *              1             0             1 
    74 W[P2,RE6]    *              0             0             1 
    75 W[P3,RE6]    *              0             0             1 
    76 W[P4,RE6]    *              0             0             1 
    77 W[P5,RE6]    *              0             0             1 
    78 W[P6,RE6]    *              0             0             1 
    79 U[RE2]       *              5             0               
    80 U[RE1]       *              4             0               
    81 U[RE3]       *              3             0               
    82 U[RE4]       *              6             0               
    83 U[RE5]       *              2             0               
    84 U[RE6]       *              1             0               
    85 T0                          0             0               
    86 T1                         10             0               
    87 T2                         50             0               
    88 T3                         70             0               
    89 T4                         40             0               
    90 T5                         90             0               
    91 T6                         40             0               

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
