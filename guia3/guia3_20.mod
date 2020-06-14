# Resolucion guia 3.20

/* Declaracion de variables */

/* Constantes */
param CostoIndemnizacion := 1000000;
param HorasArmado := 48000;
param HorasMes := 40000;
param PrecioAvion := 16000000 - 3000000;
param CostoMontaje := 15000000;
param Operarios := 800;
param ObraCivilA := 70000000;
param ObraCivilB := 110000000;
param MetrosA := 50000;
param MetrosB := 80000;
param DiasA := 120;
param DiasB := 300;
param B := 20000000;
param A := 10000000;
param CostoTurbina := 2000000;
param HorasTurbina := 24000;
param DiasMontado := 30;

param M := 100;

/* Variables */
var TURBINA >= 0;
var AV >= 0;
var YCIERRE >= 0, binary;
var YA >= 0,binary;
var YB >= 0,binary;
var TA1 >= 0; 
var TB1 >= 0;  var TB2 >= 0; 
var T1 >= 0;   var T2 >= 0;    var T3 >= 0; 
var OCRA >= 0; var OCRB1 >= 0; var OCRB2 >= 0;


/* Funcional */
maximize z: AV * PrecioAvion - YCIERRE * CostoIndemnizacion +  YA * (A - ObraCivilA - CostoMontaje) + YB * (B - ObraCivilB - CostoMontaje) - TURBINA * CostoTurbina;

/* Restricciones */

/* Cierre planta */
s.t. cierreMin: 5 * (1-YCIERRE) <= AV;
s.t. cierreMax: M * (1-YCIERRE) >= AV;

/* Turbinas */
s.t. turbinasA: YA * 8 = TA1; 
s.t. turbinasB: YB * 10 = TB1 + TB2;

s.t. turbinasPorAvion: T1 + T2 + T3 = 4 * AV;

s.t. turbinasTotales: TURBINA = TA1 + TB1 + TB2 + T1 + T2 + T3;

/* Turbinas armado por periodo */
s.t. primeros3meses: HorasTurbina * (T1 + TA1 + TB1) <= HorasArmado * 3;
s.t. siguientes6meses: HorasTurbina * (T2 + TB2) <= HorasArmado * 6;
s.t. ultimos3meses: HorasTurbina * T3 <= HorasArmado * 3;

/* Obra Civil */
s.t. operarioPorObra: Operarios = OCRA + OCRB1;
s.t. obraA: 50000 * YA <= OCRA * 90;
s.t. obraB: 80000 * YB <= OCRB1 * 90 + OCRB2 * 120;

/* Horas Hombre */
s.t. horasPeriodo1: HorasArmado * T1 <= HorasMes * 3 * 4;
s.t. horasPeriodo2: HorasArmado * T2 <= HorasMes * 6 * 4;
s.t. horasPeriodo3: HorasArmado * T3 <= HorasMes * 3 * 4;
 