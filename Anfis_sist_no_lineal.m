close all;
U=Entrada(1:end);
Y=Salida(1:end);
Phi=[Y(2:end-1),Y(1:end-2),U(2:end-1)];
YReal=[Y(3:end)];
Datos=[Phi YReal];
