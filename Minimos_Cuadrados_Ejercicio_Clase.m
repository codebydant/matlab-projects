U=Entrada;
Y=Salida;
Phi=[Y(1:end-1),U(1:end-1)]';
Yreal=[Y(2:end)]';
plot3(Y(1:end-1),U(1:end-1),Y(2:end),'o')
xlabel('Salida (k-1)');
ylabel('Entrada (k-1)');
zlabel('Salida Real (k)');
hold on
%% 
Red=newff(Phi,Yreal,[10],{'tansig','purelin'},'trainlm');
Red.dividefcn='';
Red.Trainparam.epochs=100;
Red=train(Red,Phi,Yreal);

gensim(Red,0.1);
%Theta=Phi\Yreal;
%% 
% RangoU=0:0.5:5;
% RangoY=0:0.25:2.5;
% [U3d,Y3d]=meshgrid(RangoU,RangoY);
% Yest3d=Theta(1)*Y3d+Theta(2)*U3d;
% surf(Y3d,U3d,Yest3d);
% view(125,25)
% hold off



