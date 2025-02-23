%%
close all
U=Entrada;
Y=Salida;
Phi=[Y(2:end-1),Y(1:end-2),U(2:end-1),U(1:end-2)]';
YReal=[Y(3:end)]';
%%
Red=newff(Phi,YReal,[9],{'tansig','purelin','trainlm'});
Red.dividefcn='';
Red.trainparam.epochs=300;
Red=train(Red,Phi,YReal);
tm=2.3;
gensim(Red,tm);

%%
U=Entrada';
Y=Salida';
Ts=0.2;
X=[Y(4:end);Y(3:end-1);Y(2:end-2);U(2:end-2);U(1:end-3);];
D=[U(3:end-1)];
Red=newff(X,D,[10],{'tansig','purelin'},'trainlm');
Red.trainparam.epochs=200;
Red.dividefcn='';
Red=train(Red,X,D);
gensim(Red,Ts)
