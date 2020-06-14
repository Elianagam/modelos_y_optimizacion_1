Problem:    guia3_20
Rows:       16
Columns:    14 (3 integer, 3 binary)
Non-zeros:  41
Status:     INTEGER OPTIMAL
Objective:  z = 30000000 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 z                       3e+07                             
     2 cierreMin                  -6                          -5 
     3 cierreMax                  -6          -100               
     4 turbinasA                   0            -0             = 
     5 turbinasB                   0            -0             = 
     6 turbinasPorAvion
                                   0            -0             = 
     7 turbinasTotales
                                   0            -0             = 
     8 primeros3meses
                              144000                      144000 
     9 siguientes6meses
                              288000                      288000 
    10 ultimos3meses
                              144000                      144000 
    11 operarioPorObra
                                -800          -800             = 
    12 obraA                       0                          -0 
    13 obraB                  -72000                          -0 
    14 horasPeriodo1
                              288000                      480000 
    15 horasPeriodo2
                              576000                      960000 
    16 horasPeriodo3
                              288000                      480000 

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 TURBINA                    24             0               
     2 AV                          6             0               
     3 YCIERRE      *              0             0             1 
     4 YA           *              0             0             1 
     5 YB           *              0             0             1 
     6 TA1                         0             0               
     7 TB1                         0             0               
     8 TB2                         0             0               
     9 T1                          6             0               
    10 T2                         12             0               
    11 T3                          6             0               
    12 OCRA                        0             0               
    13 OCRB1                     800             0               
    14 OCRB2                       0             0               

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
