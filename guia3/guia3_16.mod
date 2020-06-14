# Resolucion guia 3.13

/* Declaracion de variables */


#Conjuntos de datos
set REGIONES;
set POSICIONES;

#Valores de datos;
param COSTO{i in REGIONES, j in REGIONES : i<>j};
param NUM{i in POSICIONES};
param TEMPERATURA{i in REGIONES};

param N := 6;
param NAFTA := 5;

#Variables
var Y{i in REGIONES, j in REGIONES: i<>j} >= 0, binary;
var W{pos in POSICIONES, reg in REGIONES: reg<>'EM' and pos<>'P0'} >= 0, binary;
var U{i in REGIONES: i<>'EM'} >=0, integer;

var T0 >= 0; var T1 >= 0; var T2 >= 0; var T3 >= 0; 
var T4 >= 0; var T5 >= 0; var T6 >= 0;


/* Definicion del funcional */
minimize z: NAFTA * sum{i in REGIONES, j in REGIONES : i<>j} COSTO[i,j] * Y[i,j];

/* Restricciones */

s.t. llegadaDesde{j in REGIONES}: sum{i in REGIONES: i<>j} Y[i,j] = 1;

s.t. salidaDesde{i in REGIONES}: sum{j in REGIONES: i<>j} Y[i,j] = 1;

s.t. evitarCiclos{i in REGIONES, j in REGIONES: i<>j and i<>'EM' and j<>'EM'}: U[i] - U[j] + N * Y[i,j] <= N - 1; 

/* Temperatura */

s.t. temperaruraInicial: T0 = 0;

s.t. regionTemp{reg in REGIONES: reg<>'EM'}: sum{pos in POSICIONES: pos<>reg and pos<>'P0'} W[pos,reg] * NUM[pos] = U[reg];

s.t. temPorPosicion{reg in REGIONES: reg<>'EM'}: sum{pos in POSICIONES: pos<>reg and pos<>'P0'} W[pos,reg] = 1;

s.t. temperatura1: T1 = T0 + sum{reg in REGIONES: reg<>'EM'} W['P1', reg] * TEMPERATURA[reg];
s.t. temperatura2: T2 = T1 + sum{reg in REGIONES: reg<>'EM'} W['P2', reg] * TEMPERATURA[reg];
s.t. temperatura3: T3 = T2 + sum{reg in REGIONES: reg<>'EM'} W['P3', reg] * TEMPERATURA[reg];
s.t. temperatura4: T4 = T3 + sum{reg in REGIONES: reg<>'EM'} W['P4', reg] * TEMPERATURA[reg];
s.t. temperatura5: T5 = T4 + sum{reg in REGIONES: reg<>'EM'} W['P5', reg] * TEMPERATURA[reg];
s.t. temperatura6: T6 = T5 + sum{reg in REGIONES: reg<>'EM'} W['P6', reg] * TEMPERATURA[reg];

solve;

/* Datos */
data;

set REGIONES:= EM RE1 RE2 RE3 RE4 RE5 RE6;
set POSICIONES := P0 P1 P2 P3 P4 P5 P6;

param NUM:= P0 0 P1 1 P2 2 P3 3 P4 4 P5 5 P6 6;
param TEMPERATURA := EM 0 RE1 -30 RE2 50 RE3 20 RE4 -50 RE5 40 RE6 10;

param COSTO : 
      EM   RE1  RE2  RE3  RE4  RE5  RE6 :=
EM    .    10   5    3     9    15   6
RE1    10   .    4    7     9    20   12
RE2    5    4    .    5     3    7    7
RE3    3    7    5    .     7    3    8
RE4    9    9    3    7     .    12   16
RE5    15   20   7    3     12   .     3
RE6    6    12   7    8     16   3    .;


end;
