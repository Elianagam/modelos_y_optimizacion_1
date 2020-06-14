# Resolucion guia 3.6

/* Declaracion de variables */

#Conjuntos de datos
set aceite;
set horas;

#Valores de datos;
param precio{i in aceite};
param costo_horas{i in horas};
param dureza{i in aceite};

param precio_venta := 150;
param M := 20000;
param m := 0.01;

param tiempo_refinado := 20; # [min/ton]
param minimo_crudo := 20;

#Variables
var Y{i in aceite} >= 0, binary;
var X{i in aceite} >= 0;

var YH{i in horas} >= 0, binary;
var H{i in horas} >= 0;
var HO >= 0;

var AB >= 0, binary;
var AC >= 0;


/* Definicion del funcional */
maximize Z: AC * precio_venta - (sum{i in aceite} precio[i] * X[i]) - (sum{j in horas} costo_horas[j] * YH[j]);



/* Restricciones */

s.t. tiposAceites: sum{i in aceite} Y[i] <= 3;

/* Uso AB */
s.t. usoABMin: AB <= Y['A'] + Y['B'];
s.t. usoABMax: Y['A'] + Y['B'] <= 2 * AB;
s.t. usoABentoncesC: AB <= Y['C'];

/* Horas Maquina */
s.t. intervalo1Min: m * YH['H1'] <= H['H1'];
s.t. intervalo1Max: H['H1'] <= 99.9 * YH['H1'];

s.t. intervalo2Min: 100 * YH['H2'] <= H['H2'];
s.t. intervalo2Max: H['H2'] <= 199.9 * YH['H2'];

s.t. intervalo3Min: 200 * YH['H3'] <= H['H3'];
s.t. intervalo3Max: H['H3'] <= 499.9 * YH['H3'];

s.t. intervalo4Min: 500 * YH['H4'] <= H['H4'];
s.t. intervalo4Max: H['H4'] <= M * YH['H4'];

s.t. intervalosPosibles: sum{i in horas} YH[i] = 1;

s.t. horasMaquinaUsadas: tiempo_refinado/60 * (sum{i in aceite} X[i]) = HO;
s.t. horasUso: sum{j in horas} H[j] = HO;

/* Capacidad de refinación */
s.t. refinadoAB: X['A'] + X['B'] <= 200;
s.t. refinadoCDE: X['C'] + X['D'] + X['E'] <= 250;

/* Dureza */
s.t. durezaMin: 3 <= sum{i in aceite} X[i] * dureza[i];
s.t. durezaMax: sum{i in aceite} Y[i] * dureza[i] <= 6;

/* Uso de Crudo */
s.t. usoCrudo{i in aceite}: X[i] >= minimo_crudo * Y[i];
s.t. crudos: sum{i in aceite} X[i] = AC;

s.t. relacionXYMin{i in aceite}: m * Y[i] <= X[i];
s.t. relacionXYMax{i in aceite}: X[i] <= M * Y[i];


/* Datos */
data;
param precio :=
	A 	110	
	B 	120	
	C 	130
	D 	110
	E 	115;

param costo_horas := 
	H1	5000
	H2 	8000
	H3	9500
	H4 	10000;

param dureza := 
	A 	8.8	
	B 	6.1		
	C 	2
	D 	4.2
	E 	5;

set aceite := A B C D E;
set horas := H1 H2 H3 H4;

end;