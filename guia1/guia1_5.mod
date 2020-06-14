# Resolucion guia 1.5

/* Declaracion de variables */

var M >= 0;
var N >= 0;

/* Definicion del funcional */

minimize z: 10 * M + 4 * N;

/* Restricciones */

s.t. nutA: 0.1 * M >= 0.4;
s.t. nutB: 0.1 * M >= 0.6;
s.t. nutC: 0.1 * M + 0.2 * N >= 2;
s.t. nutD: 0.2 * M + 0.1 * N >= 1.7;

end;