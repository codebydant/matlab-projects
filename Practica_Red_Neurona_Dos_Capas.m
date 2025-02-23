X=[0 1 0 1;
   0 0 1 1];
D=[0 1 1 0];
Red=newff(X,D,[5 5],{'tansig','tansig','tansig','trainlm'});
Red.dividefcn='';
Red=train(Red,X,D);
Y=sim(Red,X);
gensim(Red,0.1);