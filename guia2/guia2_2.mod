# Resolucion guia 2.2


/* Constante */

param PA := 40; 
param PB := 50;

/* Declaracion de variables */

var A >= 0;
var B >= 0;

var YSA >= 0;
var YSC >= 0;
var YEA >= 0;

var CuA >= 0;
var SnA >= 0;
var SnB >= 0;
var ZnA >= 0;
var ZnB >= 0;
var MnB >= 0;

/* Definicion del funcional */

maximize Z: A * PA + B * PB - 10 * YSA - 40 * YSC - 50 * YEA;

/* Restricciones */

/* Yacimientos */

s.t. maxYSA: YSA <= 1000;
s.t. maxYSC: YSC <= 2000;
s.t. maxYEA: YEA <= 3000;

/* Relacion Entrada/Salida*/

s.t. alA: CuA + SnA + ZnA = A;
s.t. alB: MnB + SnB + ZnB = B;

/* Minerales */

s.t. mineralCuA: CuA <= 0.8 * A;
s.t. mineralSnA: SnA <= 0.3 * A;
s.t. mineralZnA: ZnA >= 0.5 * A;

s.t. mineralMinSnB: SnB >= 0.4 * B;
s.t. mineralMaxSnB: SnB <= 0.6 * B;
s.t. mineralMnB: SnB >= 0.3 * B;
s.t. mineralSnB: ZnB <= 0.7 * B;

/* Explotacion */

s.t. yacCu: 0.2 * YSA + 0.1 * YSC + 0.05 * YEA = CuA;
s.t. yacSn: 0.2 * YSA + 0.2 * YSC + 0.05 * YEA = SnA + SnB;
s.t. yacMn: 0.3 * YSA + 0.3 * YSC + 0.7 * YEA = MnB;
s.t. yacZn: 0.3 * YSA + 0.3 * YSC + 0.2 * YEA = ZnA + ZnB;

end;