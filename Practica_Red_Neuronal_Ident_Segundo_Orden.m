U=Entrada;
Y=Salida;
Phi=[Y(2:end-1),Y(1:end-2),U(2:end-1),U(1:end-2)]';
Yreal=[Y(3:end)]'; 
Red=newff(Phi,Yreal,[10],{'tansig','purelin'},'trainlm');
Red.dividefcn='';
Red.Trainparam.epochs=100;
Red=train(Red,Phi,Yreal);
gensim(Red,0.1);

