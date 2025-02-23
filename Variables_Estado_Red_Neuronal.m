U=Entrada;
X1=Estado1;
X2=Estado2;
X=[X1(1:N-1);
    X2(1:N-1);
    U(1:N-1)];
Yd=[X1(2:N);
X2(2:N)];
red=newff(X,Yd,[10],{'tansig','purelin'},'trainlm');

red.trainparam.epochs=250;
red=train(red,X,Yd);

gensim(red,0.1);