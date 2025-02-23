%Ejemplo 1
m=1;
b=1;
k=1;

A=[0,1;-k/m,-b/m];
B=[0;1/m];
C=[1,0];
D=[0];
[num,den]=ss2tf(A,B,C,D);
sistema=tf(num,den);

