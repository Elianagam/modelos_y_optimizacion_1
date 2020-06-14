# Resolucion guia 4.12

/* Declaracion de variables */

var X1 >= 0;
var X2 >= 0;

/* Definicion del funcional */

minimize z: X1 + 3 * X2;

/* Restricciones */

s.t. res1: X1 + 2 * X2 >= 4;
s.t. res2: X1 <= 2;
s.t. res3: X1 + 3 * X2 <= 5;

end;