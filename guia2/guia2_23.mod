# Resolucion guia 2.23

/* Constante */

param HHDisponibles := 2500;
param HMDisponibles := 1000;
param MPDisponibles := 5000;
param gananciaMinima := 45000;
param cajaInicial := 30000;
param prestamoMaximo := 20000;

param E1 := 1;
param E2 := 1;
param E3 := 1;
param K1 := 0.5;
param K2 := 0.5;
param K3 := 0.5;
param S1 := 1;
param S2 := 1;
param S3 := 1;

/* Declaracion de variables */
var E >= 0;
var K >= 0;
var S >= 0;

var SHH >= 0;
var SHM >= 0;
var SMP >= 0;

var SG >= 0;
var FG >= 0;

var G >= 0;
var C >= 0;

var HH >= 0;
var HM >= 0;
var MP >= 0;

/* Definicion del funcional */

maximize z: G + (cajaInicial - C) + SG * 0.005 - FG * 0.01;

/* Restricciones */

/* Uso de Recursos */

s.t. usoHH: E1 * E + K1 * K + S1 * S = HH;
s.t. usoHM: E2 * E + K2 * K + S2 * S = HM;
s.t. usoMP: E3 * E + K3 * K + S3 * S = MP;

/* Recursos disponibles */

s.t. disHH: HH <= HHDisponibles;
s.t. disHM: HM <= HMDisponibles;
s.t. disMP: MP <= MPDisponibles;

/* Sobras */
s.t. sobraHH: HH + SHH = HHDisponibles;
s.t. sobraHM: HM + SHM = HMDisponibles;
s.t. sobraMP: MP + SMP = MPDisponibles;

/* Costos de recursos */
s.t. costo: 5 * (HH + SHH) + 7 * (HM + SHM) + 2 * (MP + SMP) = C;
s.t. maxCosto: C <= cajaInicial;

/* Ganancia */ 

s.t. ganancia: E * 100 + K * 150 + S * 200 + SHH * 4 + SHM * 8 + SMP * 2 = G;
s.t. ganMin: G <= gananciaMinima;

/* Sobrante o faltante de ganancia */

s.t. sobraFalta: G + (cajaInicial - C) - gananciaMinima = SG - FG;
s.t. maximoPrestamo: FG <= prestamoMaximo;

end;