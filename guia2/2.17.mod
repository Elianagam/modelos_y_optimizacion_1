/* Parámetros */

param A := 400;
param C := 250;

/* Variables */ 

var V >= 0;  
var S >= 0;  
var D >= 0;  

var VR >= 0, integer;  
var VO >= 0, integer;  
var VM >= 0, integer ;  

var SM >= 0, integer;  
var SR >= 0, integer;  

var DR >= 0, integer;  
var DO >= 0, integer;  
var DM >= 0, integer;  

/* MOVIMIENTOS VIERNES-SABADO */

var VSRR >= 0, integer;  
var VSRM >= 0, integer;  

var VSOR >= 0, integer;  
var VSOM >= 0, integer;  

var VSMR >= 0, integer;  
var VSMM >= 0, integer;  

/* MOVIMIENTOS SABADO-DOMINGO */

var SDRR >= 0, integer;  
var SDRO >= 0, integer;  
var SDRM >= 0, integer;  

var SDMR >= 0, integer;  
var SDMO >= 0, integer;  
var SDMM >= 0, integer;  

/* ALTAS POR DIA Y TAREA */

var SRN >= 0, integer;
var SMN >= 0, integer;

var DRN >= 0, integer;
var DON >= 0, integer;
var DMN >= 0, integer;

/* BAJAS POR DIA Y TAREA */

var VRB >= 0, integer;
var VOB >= 0, integer;
var VMB >= 0, integer;

var SRB >= 0, integer;
var SMB >= 0, integer;


minimize z : 12 * (V + S + D);

s.t. totalViernesReponer: 	VR = VSRM + VSRR + VRB;
s.t. totalViernesOrdenar: 	VO = VSOM + VSOR + VOB;
s.t. totalViernesMarcar: 	VM = VSMM + VSMR + VMB;

s.t. totalSabadoReponer: 	SR = VSOR + VSRR + VSMR + SRN;
s.t. totalSabadoMarcar: 	SM = VSMM + VSRM + VSOM + SMN;

s.t. totalSabado_reponer: 	SR = SDRM + SDRR + SRB + SDRO;
s.t. totalSabado_marcar: 	SM = SDMR + SDMM + SMB + SDMO;

s.t. totalDomingoReponer: 	DR = SDMR + SDRR + DRN;
s.t. totalDomingoOrdenar: 	DO = SDMO + SDRO + DON;
s.t. totalDomingoMarcar: 	DM = SDRM + SDMM + DMN;

s.t. totalViernes: 	        V = VR + VO + VM;
s.t. totalSabado:       	S = SR + SM;
s.t. totalDomingo:      	D = DR + DO + DM;

s.t. maximosEmpleadosViernes:	V <= 18;
s.t. maximosEmpleadosSabado: 	S <= 18;
s.t. maximosEmpleadosDomingo: 	D <= 18;

s.t. eficienciaViernesReponer: 	VR * 15 * 8 >= A;
s.t. eficienciaViernesOrdenar: 	VO * 30 * 8 >= 300;
s.t. eficienciaViernesMarcar: 	VM * 35 * 8 >= 150;

s.t. eficienciaSabadoReponer: 	8 * (15 * (VSRR + SRN) + ((15 + 1.5) * (VSOR + VSMR))) >= 500;
s.t. eficienciaSabadoMarcar:	8 * (35 * (VSMM + SMN) + ((35 + 3.5) * (VSOM + VSRM))) >= 139;

s.t. eficienciaDomingoReponer: 	8 * (15 * (SDRR + DRN) + ((15 + 1.5) * SDMR)) >= 350;
s.t. eficienciaDomingoOrdenar: 	8 * (30 * DON + ((30 + 3) * (SDRO + SDMO))) >= C;
s.t. eficienciaDomingoMarcar: 	8 * (35 * (SDMM + DMN) + ((35 + 3.5) * SDRM)) >= 143;
