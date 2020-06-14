# Resolucion guia 2.1

/* Declaracion de variables */

var PA >= 0;
var PB >= 0;
var PC >= 0;
var PB1 >= 0;
var PB2 >= 0;

/* Definicion del funcional */

maximize z: 10 * PA + 15 * PB + 18 * PC;

/* Restricciones */

s.t. prodMaqB: PB1 + PB2 - PB = 0;
s.t. maq1: 5 * PA + 6 * PB1 <= 16 * 5;
s.t. maq2: 4 * PC + 4 * PB2 <= 16 * 5;
s.t. lanaM: 1.6 * PA + 1.2 * PC <= 20;
s.t. lanaN: 1.8 * PB <= 36;
s.t. prodB: PB >= 10;

end;