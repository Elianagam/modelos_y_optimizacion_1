# Resolucion guia 3.7

/* Declaracion de variables */

#Conjuntos de datos
set productos;
set ventaA;
set compraBInt;
set compraC;
set compraB;

#Valores de datos;
param precioA{i in ventaA};
param demanda{i in productos};
param precioB{i in compraB};
param precioC{i in compraC};
param stock_inicial{i in productos};

param M := 500000;
param m := 0.01;

#Variables
var VEN{i in productos} >= 0;
var COM{i in productos} >= 0;

var A{i in ventaA} >= 0;
var YA{i in ventaA} >= 0, binary;

var YC{i in compraC} >= 0, binary;
var C{i in compraC} >= 0;

var B{i in compraBInt} >= 0;
var CB{i in compraB} >= 0;

var Y{i in productos} >= 0, binary;

var EXCESO >= 0; 		var DEFECTO >= 0;
var YEX >= 0, binary; 	var YDE >= 0, binary;

/* Definicion del funcional */
maximize Z: (sum{i in ventaA} A[i] * precioA[i]) + VEN['B'] * 35 + VEN['C'] * 40
			- (COM['A'] * 3 + sum{i in compraB} CB[i] * precioB[i]) + sum{i in compraC} C[i] * precioC[i];



/* Restricciones */

/* Venta de A */
s.t. ventaA1Min: m * YA['A1'] <= A['A1'];
s.t. ventaA1Max: A['A1'] <= 499.9 * YA['A1'];

s.t. ventaA2Min: 500 * YA['A2'] <= A['A2'];
s.t. ventaA2Max: A['A2'] <= 1000 * YA['A2'];

s.t. ventaA3Min: 1000 * YA['A3'] <= A['A3'];
s.t. ventaA3Max: A['A3'] <= M * YA['A3'];

s.t. ventaAT: sum{i in ventaA} YA[i] = 1;
s.t. ventaTotalA: sum{i in ventaA} A[i] = VEN['A'];

/* Ventas de A menores a B y C*/

s.t. excesoDefecto: VEN['B'] - VEN['C'] = EXCESO - DEFECTO;
s.t. excesoMin: m * YEX <= EXCESO;
s.t. excesoMax: EXCESO <= M * YEX;
s.t. defectoMin: m * YDE <= DEFECTO;
s.t. defectoMax: DEFECTO <= M * YDE;
s.t. relEXDE: YEX + YDE <= 1;
s.t. ventasAC: VEN['A'] <= VEN['C'] + M * YDE;
s.t. ventasAB: VEN['A'] <= VEN['B'] + M * YDE;

/* Demanda */
s.t. demandas{i in productos}: VEN[i] <= demanda[i];

/* Compra de B segun C */

s.t. compraB1Min: m * YC['C1'] <= B['B1a'];
s.t. compraB1Max: B['B1a'] <= 999.9 * YC['C1'];

s.t. compraB1bMin: 1000 * YC['C2a'] <= B['B1a'];
s.t. compraB1bMax: B['B1a'] <= 2499.9 * YC['C2a'];

s.t. compraB2aMin: 2500 * YC['C2b'] <= B['B2a'];
s.t. compraB2aMax: B['B2a'] <= 2999.9 * YC['C2b'];

s.t. compraB2bMin: 3000 * YC['C3'] <= B['B2b']; 
s.t. compraB2bMax: B['B2b'] <= M * YC['C3'];

s.t. compraB1: B['B1a'] + B['B1b'] = CB['B1'];
s.t. compraB2: B['B2a'] + B['B2b'] = CB['B2'];

s.t. compraBTotal: sum{i in compraB} CB[i] = COM['B'];

/* Compra de C */
s.t. compraC1Min: m * YC['C1'] <= C['C1'];
s.t. compraC1Max: C['C1'] <= 999.9 * YC['C1'];

s.t. compraC2aMin: 1000 * YC['C2a'] <= C['C2a'];
s.t. compraC2aMax: C['C2a'] <= 2499.9 * YC['C2a'];

s.t. compraC2bMin: 2500 * YC['C2b'] <= C['C2b'];
s.t. compraC2bMax: C['C2b'] <= 2999.9 * YC['C2b'];

s.t. compraC3Min: 3000 * YC['C3'] <= C['C3'];
s.t. compraC3Max: C['C3'] <= M * YC['C3'];

s.t. compraCT: sum{i in compraC} YC[i] = 1;
s.t. compraCTotal: sum{i in compraC} C[i] = COM['C'];

/* Compra venta */
s.t. compraVenta{i in productos}: COM[i] + stock_inicial[i] = VEN[i];

/* Datos */
data;
param precioA := 
	A1 20 
	A2 18 
	A3 15;

param demanda := 
	A 2000 
	B 3000 
	C 4000;

param precioB := 
	B1 4
	B2 3;

param stock_inicial := 
	A 50
	B 100
	C 200; 

param precioC := 
	C1 6
	C2a 5
	C2b 5
	C3 4;

set productos := A B C;
set ventaA := A1 A2 A3;

set compraC := C1 C2a C2b C3;
set compraBInt := B1a B1b B2a B2b;
set compraB := B1 B2;


end;