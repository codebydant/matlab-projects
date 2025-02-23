%%
close all
U=Entrada;
Y=Salida;
Phi=[Y(2:end-1),Y(1:end-2),U(2:end-1),U(1:end-2)]';
YReal=[Y(3:end)]';
%%
Red=newff(Phi,YReal,[9],{'tansig','purelin','trainlm'});
Red.dividefcn='';
Red.trainparam.epochs=250;
Red=train(Red,Phi,YReal);
tm=2.3;
gensim(Red,tm);