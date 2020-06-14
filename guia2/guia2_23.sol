Problem:    guia2_23
Rows:       16
Columns:    13
Non-zeros:  46
Status:     OPTIMAL
Objective:  z = 45502.5 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 z            B        15502.5                             
     2 usoHH        NS             0            -0             =         < eps
     3 usoHM        NS             0            -0             =         < eps
     4 usoMP        NS             0            -0             =         < eps
     5 disHH        B        59.4406                        2500 
     6 disHM        B        59.4406                        1000 
     7 disMP        B        59.4406                        5000 
     8 sobraHH      NS          2500          2500             =        -5.025 
     9 sobraHM      NS          1000          1000             =        -7.035 
    10 sobraMP      NS          5000          5000             =         -2.01 
    11 costo        NS             0            -0             =         1.005 
    12 maxCosto     B          29500                       30000 
    13 ganancia     NS             0            -0             =         < eps
    14 ganMin       NU         45000                       45000         1.005 
    15 sobraFalta   NS         15000         15000             =        -0.005 
    16 maximoPrestamo
                    B              0                       20000 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 E            NL             0             0                       < eps
     2 K            B        118.881             0               
     3 S            NL             0             0                       < eps
     4 SHH          B        2440.56             0               
     5 SHM          B        940.559             0               
     6 SMP          B        4940.56             0               
     7 SG           B            500             0               
     8 FG           NL             0             0                      -0.005 
     9 G            B          45000             0               
    10 C            B          29500             0               
    11 HH           B        59.4406             0               
    12 HM           B        59.4406             0               
    13 MP           B        59.4406             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 7.28e-12 on row 11
        max.rel.err = 1.23e-16 on row 11
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 8.88e-16 on column 5
        max.rel.err = 8.85e-17 on column 13
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
