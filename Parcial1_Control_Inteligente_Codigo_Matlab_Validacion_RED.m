%%VALIDACIÓN DE LA RED CON 900 MUESTRAS RESTANTES
close all
UVal=Entrada(2101:end);
YVal=Salida(2101:end);
PhiVal=[YVal(2:end-1),YVal(1:end-2),UVal(2:end-1),UVal(1:end-2)]';
YRealVal=[YVal(3:end)]';

%%
%SIMULACIÓN DE 1 PASO 
YRed=sim(Red,PhiVal);
TiempoVal=0:0.1:89.8;
plot(TiempoVal,YRealVal,TiempoVal,YRed);