E=Error';
R=Referencia';
Y=Salida';
U=Control';
N=length(U);
X=[E(1:N-1);U(1:N-1);R(2:N);Y(2:N)]; %Regresor %R(1:N-1)Y(1:N-1)
Yd=[U(2:N)];
Red=newff(X,Yd,[15],{'tansig','purelin'},'trainlm');
Red.trainparam.epochs=100;
Red.dividefcn='';
Red=train(Red,X,Yd);
gensim(Red,0.06)