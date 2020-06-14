# Resolucion guia 3.4

/* Declaracion de variables */

#Conjuntos de datos
set personas;
set caracter;

#Valores de datos;
param costo{i in personas};

#Variables
var Y{i in personas} >= 0, binary;
var C{i in caracter} >= 0, binary;
var VS >= 0, binary;

/* Definicion del funcional */
minimize z: sum{i in personas} costo[i] * Y[i] - 100 * C['C2'];



/* Restricciones */
s.t. cantidadPersonas: Y['Y1'] + Y['Y2'] + Y['Y3'] + Y['Y4'] + Y['Y5'] + Y['Y6'] + 
				Y['Y7'] + Y['Y8'] + Y['Y9'] + Y['Y10'] + Y['Y11'] + Y['Y12'] = 6;

/* Profeciones */
s.t. quimicos: Y['Y2'] + Y['Y7'] >= 1;
s.t. ingenieros: Y['Y3'] + Y['Y9'] + Y['Y10'] >= 1;
s.t. contadores: Y['Y1'] + Y['Y4'] + Y['Y5'] + Y['Y8'] + Y['Y11'] >= 2;

/* Vidal y Smith */
s.t. vidalSmithMin: VS <= Y['Y7'] + Y['Y11'];
s.t. vidalSmithMax: Y['Y7'] + Y['Y11'] <= VS + 1;
s.t. contadoresVS: Y['Y1'] + Y['Y4'] + Y['Y5'] + Y['Y8'] + Y['Y11'] <= 3 + VS;

/* Mentor alumno */
s.t. mentorAlumno: Y['Y6'] <= Y['Y4'];

/* Personas Conflictivas */
s.t. conflicto1: Y['Y2'] + Y['Y11'] <= 1;
s.t. conflicto2: Y['Y4'] + Y['Y3'] <= 1;

/* Personalidades Antagonicas */
s.t. personalidadMin4: C['C4'] <= Y['Y2'] + Y['Y6'];
s.t. personalidadMax4: Y['Y2'] + Y['Y6'] <= 2 * C['C4'];

s.t. personalidadMin1: C['C1'] <= Y['Y1'] + Y['Y5'] + Y['Y7'];
s.t. personalidadMax1: Y['Y1'] + Y['Y5'] + Y['Y7'] <= 3 * C['C1'];

s.t. personalidadConflicto: C['C1'] + C['C4'] <= 1;

/* Benevolentes */
s.t. benevolentesMin: C['C2'] * 2 <= Y['Y4'] + Y['Y8'] + Y['Y11'] + Y['Y12'];
s.t. benevolentesMax: Y['Y4'] + Y['Y8'] + Y['Y11'] + Y['Y12'] <= C['C2'] * 4;

/* Datos */
data;
param costo :=
	Y1 	2500 	Y2 	2000	Y3 	1800	Y4 	3000	Y5 	2500	Y6 	1500
	Y7 	3500	Y8 	4000	Y9 	2800	Y10 3000	Y11 2500	Y12 5000;

set personas := Y1 Y2 Y3 Y4 Y5 Y6 Y7 Y8 Y9 Y10 Y11 Y12;

set caracter := C1 C2 C3 C4;

end;