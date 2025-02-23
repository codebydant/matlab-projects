close all
U=Entrada;
Y=Salida;
Phi=[Y(1:end-1),U(1:end-1)];
Yreal=[Y(2:end)];
plot3(Y(1:end-1),U(1:end-1),Y(2:end),'or')
xlabel('Salida (k-1)');
ylabel('Entrada (k-1)');
zlabel('Salida Real (k)');
hold on
%% 
Theta=Phi\Yreal
%%
RangoU=0:0.5:5;
RangoY=0:0.25:2.5;

[U3d,Y3d]=meshgrid(RangoU,RangoY);

[f,c]=size(U3d);
Xred=[reshape(Y3d,1,f*c);
      reshape(U3d,1,f*c)];
Yest3d=sim(Red,Xred);
%Yest3d=Theta(1)*Y3d+Theta(2)*U3d;
surf(Y3d,U3d,reshape(Yest3d,f,c));
view(125,25)
hold off
