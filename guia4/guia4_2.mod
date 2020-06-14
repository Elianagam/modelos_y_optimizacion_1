# Resolucion guia 4.2

/* Declaracion de variables */

var X1 >= 0;
var X2 >= 0;

/* Definicion del funcional */

maximize z: 10 * X1 + 3 * X2;

/* Restricciones */

s.t. res1: -2 * X1 + X2 <= 2;
s.t. res2: X1 - X2 <= 2;
s.t. res3: X1 + X2 <= 5;

end;