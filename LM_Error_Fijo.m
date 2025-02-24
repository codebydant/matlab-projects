%%
U=Entrada;
Y=Salida;
E=zeros(length(U),1);
Phi=[Y(1:end-1),U(1:end-1),E(1:end-1)]';
Yd=[Y(2:end)]';
N=length(U);
%%
Red=newff(Phi,Yd,[15],{'tansig','purelin'},'trainlm');
Red.divideFcn='';
Red.trainparam.epochs=100;
[Red,tr,YRed,E]=train(Red,Phi,Yd);
gensim(Red,0.01);