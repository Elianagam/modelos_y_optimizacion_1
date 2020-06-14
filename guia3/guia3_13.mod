# Resolucion guia 3.13

/* Declaracion de variables */


#Conjuntos de datos
set FABRICA_Y_COMERCIOS;

#Valores de datos;
param COSTO{i in FABRICA_Y_COMERCIOS, j in FABRICA_Y_COMERCIOS : i<>j};

param CN := 1;
param CO := 9;
param N := 5;

#Variables
var Y{i in FABRICA_Y_COMERCIOS, j in FABRICA_Y_COMERCIOS: i<>j} >= 0, binary;
var U{i in FABRICA_Y_COMERCIOS: i<>'F'} >=0, integer;


/* Definicion del funcional */
minimize z: (CN + CO) * sum{i in FABRICA_Y_COMERCIOS, j in FABRICA_Y_COMERCIOS : i<>j} COSTO[i,j] * Y[i,j];

/* Restricciones */

s.t. llegadaDesde{j in FABRICA_Y_COMERCIOS}: sum{i in FABRICA_Y_COMERCIOS: i<>j} Y[i,j] = 1;

s.t. salidaDesde{i in FABRICA_Y_COMERCIOS}: sum{j in FABRICA_Y_COMERCIOS: i<>j} Y[i,j] = 1;

s.t. evitarCiclos{i in FABRICA_Y_COMERCIOS, j in FABRICA_Y_COMERCIOS: i<>j and i<>'F' and j<>'F'}: U[i] - U[j] + N * Y[i,j] <= N - 1; 

s.t. antes43: U['C3'] <= U['C4'];
s.t. antes25: U['C5'] <= U['C2'];
s.t. antes23: U['C3'] <= U['C2'];

solve;

/* Datos */
data;

set FABRICA_Y_COMERCIOS:= F C1 C2 C3 C4 C5;

param COSTO : F C1 C2 C3 C4 C5 :=
			F  	.  0  0  0  0  0
			C1  0  .  7  7  5  8
			C2  0  8  . 12 13  6
			C3  0  6 10  .  9  5
			C4  0 4 15  8  .  14
			C5  0 9  7  7 12  .;

end;
