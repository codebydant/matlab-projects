%%
U=Entrada;
Y=Salida;
E=zeros(length(U),1);
Phi=[Y(1:end-1),U(1:end-1),E(1:end-1)]';
Yd=[Y(2:end)]';
N=length(U);
%%
Red=newff(Phi,Yd,[10],{'tansig','purelin'},'trainlm');
Red.divideFcn='';
Red=train(Red,Phi,Yd);
Red.trainparam.epochs=2;
for i=1:50
    [Red,tr,YRed,E]=train(Red,Phi,Yd);
    %actualizo las muestras del error
    %tr: registro de entrenamiento, guarda la salida y el error
    Enew=[0 E]';
    Phi=[Y(1:N-1),U(1:N-1),Enew(1:N-1)]';    
end;
gensim(Red,0.01)