Problem:    2
Rows:       25
Columns:    33 (30 integer, 0 binary)
Non-zeros:  81
Status:     INTEGER OPTIMAL
Objective:  z = 204 (MINimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 z                         204                             
     2 totalViernesReponer
                                   0            -0             = 
     3 totalViernesOrdenar
                                   0            -0             = 
     4 totalViernesMarcar
                                   0            -0             = 
     5 totalSabadoReponer
                                   0            -0             = 
     6 totalSabadoMarcar
                                   0            -0             = 
     7 totalSabado_reponer
                                   0            -0             = 
     8 totalSabado_marcar
                                   0            -0             = 
     9 totalDomingoReponer
                                   0            -0             = 
    10 totalDomingoOrdenar
                                   0            -0             = 
    11 totalDomingoMarcar
                                   0            -0             = 
    12 totalViernes                0            -0             = 
    13 totalSabado                 0            -0             = 
    14 totalDomingo                0            -0             = 
    15 maximosEmpleadosViernes
                                   7                          18 
    16 maximosEmpleadosSabado
                                   5                          18 
    17 maximosEmpleadosDomingo
                                   5                          18 
    18 eficienciaViernesReponer
                                 480           400               
    19 eficienciaViernesOrdenar
                                 480           300               
    20 eficienciaViernesMarcar
                                 280           150               
    21 eficienciaSabadoReponer
                                 516           500               
    22 eficienciaSabadoMarcar
                                 308           139               
    23 eficienciaDomingoReponer
                                 372           350               
    24 eficienciaDomingoOrdenar
                                 264           250               
    25 eficienciaDomingoMarcar
                                 308           143               

   No. Column name       Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 V                           7             0               
     2 S                           5             0               
     3 D                           5             0               

     4 VR           *              4             0               
     5 VO           *              2             0               
     6 VM           *              1             0               

     7 SM           *              1             0               
     8 SR           *              4             0               

     9 DR           *              3             0               
    10 DO           *              1             0               
    11 DM           *              1             0               

    12 VSRR         *              0             0               
    13 VSRM         *              1             0               
    14 VSOR         *              2             0               
    15 VSOM         *              0             0               
    16 VSMR         *              1             0               
    17 VSMM         *              0             0               

    18 SDRR         *              0             0               
    19 SDRO         *              1             0               
    20 SDRM         *              1             0               
    21 SDMR         *              1             0               
    22 SDMO         *              0             0               
    23 SDMM         *              0             0               

    24 SRN          *              1             0               
    25 SMN          *              0             0               

    26 DRN          *              2             0               
    27 DON          *              0             0               
    28 DMN          *              0             0               

    29 VRB          *              3             0               
    30 VOB          *              0             0               
    31 VMB          *              0             0               

    32 SRB          *              2             0               
    33 SMB          *              0             0               

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
