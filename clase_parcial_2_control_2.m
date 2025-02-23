clc
clear all
A=[1,2;0,3];
B=eye(2); %MATRIZ IDENTICA DE TAMAÑO 2
C=eye(2);
polos_sist=eig(A); %AUTOVALOR
co=ctrb(A,B);rank(co);
pd=[-1,-2];
k_regulador=place(A,B,pd)
%%Clase_parcial_2_control_2;
aa=[A,zeros(2);-C,zeros(2)];
ba=[B;zeros(2)];
pda=[pd,-10,-20];
coa=ctrb(aa,ba);rank(coa);
ks=place(aa,ba,pda);
kp=ks(:,1:2);
ki=ks(:,3:4)




