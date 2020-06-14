# Resolucion guia 1.6

/* Declaracion de variables */

var X1 >= 0;
var X2 >= 0;

/* Definicion del funcional */

maximize z: 8 * X1 + 4 * X2;

/* Restricciones */

s.t. res1: 4 * X1 - 2 * X2 <= 4;
s.t. res2: 4 * X1 + 2 * X2 <= 8;
s.t. res3: X1 + X2 >= 1;

end;

