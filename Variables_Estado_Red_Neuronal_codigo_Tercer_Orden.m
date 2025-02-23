U=Entrada;
X1=Estado1;
X2=Estado2;
X3=Estado3;
X=[X1(1:end-1),X2(1:end-1),X3(1:end-1), U(1:end-1)]';
Yd=[X1(2:end),X2(2:end),X3(2:end)]';

Red=newff(X,Yd,[10],{'tansig','purelin'},'trainlm');
Red.dividefcn='';
Red.trainparam.epochs=250;
Red=train(Red,X,Yd);

gensim(Red,0.5);