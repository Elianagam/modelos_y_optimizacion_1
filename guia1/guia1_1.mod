# Resolucion guia 1.1

/* Declaracion de variables */

var PA >= 0;
var PB >= 0;

/* Definicion del funcional */

maximize z: 1200 * PA + 400 * PB;

/* Restricciones */
/* Limitante de cada Producto */

s.t. procCiclohexano: 1 * PA + 2 * PB <= 20;
s.t. prodAlcohol: 3 * PA + 2/3 * PB >= 40;

end;
