# Resolucion guia 1.3

/* Declaracion de variables */

var PA >= 0;
var PB >= 0;

/* Definicion del funcional */

maximize z: 12* PA + 8 * PB;

/* Restricciones */
/* Procesamiento de cada maquina */

s.t. maqA: 1 * PA + 0.4 * PB <= 200;
s.t. maqB: 0.5 * PA + 1 * PB <= 200;

/* Produccion minima */
s.t. prodA: PA >= 50;
s.t. prodB: PB >= 4 * PA; 

end;
