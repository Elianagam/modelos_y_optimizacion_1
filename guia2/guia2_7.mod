# Resolucion guia 2.7


/* Constante */

param M := 10 * 30; /* Tiempo de maquina: hs * dias */
param P := 5; /* Precio del muñeco*/

/* Declaracion de variables */

var M1 >= 0;
var M2 >= 0;
var MT >= 0;

/* Definicion del funcional */

maximize z: M1 * P + M2 * P;

/* Restricciones */

s.t. prodMT: M1 + M2 - MT = 0;
s.t. tiempoM1: 2 * M1 <= M;
s.t. tiempoM2: 2 * M2 <= M;
s.t. matPrimaM1: 1.5 * MT <= 150 * 2;
s.t. mes1: M1 >= 70;
s.t. mes2: M2 >= 110;

end;