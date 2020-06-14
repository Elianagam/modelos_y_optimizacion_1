# Resolucion guia 1.2

/* Declaracion de variables */

var X1 >= 0;
var X2 >= 0;

/* Definicion del funcional */

maximize z: 60 * X1 + 50 * X2;

/* Restricciones */
/* Procesamiento de cada maquina */

s.t. maqA: 2 * X1 + 4 * X2 <= 80;
s.t. maqB: 3 * X1 + 2 * X2 <= 60;
s.t. maqC: 4 * X1 + 2 * X2 <= 100;

end;

