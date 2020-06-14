# Resolucion guia 2.16

/* Constante */

param depositoDis := 5000;
param S0 := 6000;
param proVentas1 := 9000;
param proVentas2 := 24000;
param proVentas3 := 20000;
param proVentas4 := 7000;

/* Declaracion de variables */
var P1 >= 0; var P2 >= 0; var P3 >= 0; var P4 >= 0;
var V1 >= 0; var V2 >= 0; var V3 >= 0; var V4 >= 0;
var S1 >= 0; var S2 >= 0; var S3 >= 0; var S4 >= 0;
var INC1 >= 0; var INC2 >= 0; var INC3 >= 0; var INC4 >= 0;
var DIS1 >= 0; var DIS2 >= 0; var DIS3 >= 0; var DIS4 >= 0;

/* Definicion del funcional */

minimize z: (INC1 + INC2 + INC3 + INC4) * 1 + (DIS1 + DIS2 + DIS3 + DIS4) * 0.5; 

/* Restricciones */

/* Produccion */
s.t. TriP1: P1 + S0 - S1 = V1;
s.t. TriP2: P2 + S1 - S2 = V2;
s.t. TriP3: P3 + S2 - S3 = V3;
s.t. TriP4: P4 + S3 - S4 = V4;

/* Sobrantes */
s.t. sobraTri1: S1 <= depositoDis;
s.t. sobraTri2: S2 <= depositoDis;
s.t. sobraTri3: S3 <= depositoDis;
s.t. sobraTri4: S4 <= depositoDis;
s.t. sobraMinTri4: S4 >= 1000;

/* Incremento o disminución de la producción de un trimestre a otro */

s.t. incDis1: P2 - S0 = INC1 - DIS1;
s.t. incDis2: P2 - P1 = INC2 - DIS2;
s.t. incDis3: P3 - P2 = INC3 - DIS3;
s.t. incDis4: P4 - P3 = INC4 - DIS4;

/* Ventas */

s.t. ventas1: V1 >= proVentas1;
s.t. ventas2: V2 >= proVentas2;
s.t. ventas3: V3 >= proVentas3;
s.t. ventas4: V4 >= proVentas4;

/* Sobrante de ventas */

s.t. ventasSobra1: V1 <= proVentas1 + depositoDis - S1;
s.t. ventasSobra2: V2 <= proVentas2 + depositoDis - S2;
s.t. ventasSobra3: V3 <= proVentas3 + depositoDis - S3;
s.t. ventasSobra4: V4 <= proVentas4 + depositoDis - S4;

# el sobrante de ventas no debe superar la capacidad del deposito - Si

end;