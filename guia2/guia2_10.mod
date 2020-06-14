# Resolucion guia 2.10


/* Constante */

param PA := 40; 
param PB := 50;

/* Declaracion de variables */

/* Ramos */ 

var RRT >= 0;
var RRA >= 0;
var RRR >= 0;
var RCR >= 0;
var RC >= 0;
var RM >= 0;
var RG >= 0;

/* Atados */

var RT >= 0;
var RA >= 0;
var RR >= 0;
var CR >= 0;
var M >= 0;

/* Definicion del funcional */

maximize Z: (3 * RRT + 10 * RRA + 8 * RRR + 3 * RCR + 2 * RC + 4 * RM + 6 * RG) - (20 * RT + 20 * RA + 10 * RR + 5 * CR + 3 * M);

/* Restricciones */

/* Demanda maxima */ 

s.t. maxRRT: RRT <= 650;
s.t. maxRRA: RRA <= 350;
s.t. maxRRR: RRR <= 250;
s.t. maxRCR: RCR <= 600;
s.t. maxRC: RC <= 1100;
s.t. maxRM: RM <= 990;
s.t. maxRG: RG <= 635;

/* Flores para ramo */

s.t. atadoCR: 18 * RCR + 6 * RC + 10 * RM + 10  * RG <= 100 * CR;
s.t. atadoM: 8 * RC + 10 * RM + 15  * RG <= 100 * M;
s.t. atadoRT: 1 * RRT <= 20 * RT; /* + 2 * RM + 5  * RG */
s.t. atadoRA: 9 * RRA <= 50 * RA; /* + 2 * RM + 5  * RG */
s.t. atadoRR: 5 * RRR + 2 * RM + 5  * RG <= 50 * RR;


end;