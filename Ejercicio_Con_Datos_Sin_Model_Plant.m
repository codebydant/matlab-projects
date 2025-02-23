
%ENTRENAMIENTO DE LA RED CON LAS PRIMERAS 1400 MUESTRAS
% close all
% U=Entrada;
% Y=Salida;
% Phi=[Y(2:end-1),Y(1:end-2),U(2:end-1)]';
% YReal=[Y(3:end)]';

%%
% Red=newff(Phi,YReal,[10],{'tansig','purelin','trainlm'});
% Red.dividefcn='';
% Red=train(Red,Phi,YReal);
% 
% gensim(Red,0.1);
%%
%VALIDACIÓN DE LA RED CON 601 MUESTRAS RESTANTES
close all
UVal=Entrada(1050:end);
YVal=Salida(1050:end);
PhiVal=[YVal(2:end-1),UVal(2:end-1)]';
YRealVal=[YVal(3:end)]';

%%
%SIMULACIÓN DE 1 PASO 
YRed=sim(Red,PhiVal);
TiempoVal=0:1:447;
plot(TiempoVal,YRealVal,TiempoVal,YRed);

