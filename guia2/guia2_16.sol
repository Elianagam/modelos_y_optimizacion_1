Problem:    guia2_16
Rows:       22
Columns:    20
Non-zeros:  55
Status:     OPTIMAL
Objective:  z = 28750 (MINimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 z            B          28750                             
     2 TriP1        NS         -6000         -6000             =            -1 
     3 TriP2        NS             0            -0             =          1.25 
     4 TriP3        NS             0            -0             =          1.25 
     5 TriP4        NS             0            -0             =          -0.5 
     6 sobraTri1    B           5000                        5000 
     7 sobraTri2    B            500                        5000 
     8 sobraTri3    B              0                        5000 
     9 sobraTri4    NU          5000                        5000         < eps
    10 sobraMinTri4 B           5000          1000               
    11 incDis1      NS          6000          6000             =            -1 
    12 incDis2      NS             0            -0             =            -1 
    13 incDis3      NS             0            -0             =         -0.75 
    14 incDis4      NS             0            -0             =           0.5 
    15 ventas1      NL          9000          9000                        1.25 
    16 ventas2      NL         24000         24000                        1.25 
    17 ventas3      NL         20000         20000                        1.25 
    18 ventas4      B           7000          7000               
    19 ventasSobra1 NU         14000                       14000         -2.25 
    20 ventasSobra2 B          24500                       29000 
    21 ventasSobra3 B          20000                       25000 
    22 ventasSobra4 NU         12000                       12000          -0.5 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 P1           B           8000             0               
     2 P2           B          19500             0               
     3 P3           B          19500             0               
     4 P4           B          12000             0               
     5 V1           B           9000             0               
     6 V2           B          24000             0               
     7 V3           B          20000             0               
     8 V4           B           7000             0               
     9 S1           B           5000             0               
    10 S2           B            500             0               
    11 S3           NL             0             0                        1.75 
    12 S4           B           5000             0               
    13 INC1         B          13500             0               
    14 INC2         B          11500             0               
    15 INC3         NL             0             0                        0.25 
    16 INC4         NL             0             0                         1.5 
    17 DIS1         NL             0             0                         1.5 
    18 DIS2         NL             0             0                         1.5 
    19 DIS3         NL             0             0                        1.25 
    20 DIS4         B           7500             0               

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
