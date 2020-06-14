# Resolucion guia 4.8

/* Declaracion de variables */

var X1 >= 0;
var X2 >= 0;

/* Definicion del funcional */

maximize z: 6 * X1 + 4 * X2;

/* Restricciones */

s.t. res1: 2 * X1 + 4 * X2 <= 48;
s.t. res2: 4 * X1 + 2 * X2 <= 60;
s.t. res3: 3 * X1  <= 45;

end;