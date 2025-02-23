clc
clear all
num=[7.711 -59.87 671.1]
den=[ 1 14.01 79.15 792.9];
sist=tf(num,den)
[a,b,c,d]=tf2ss(num,den)
polosdelsist=eig(a)
co=ctrb(a,b);rank(co);
pd=[-2.6665-2.7074i -2.6665+2.7074i]
po=[-20,-30,-35];
h=place(a',c',po)
h=h'
aa=[a,zeros(3,1);-c,0];
ba=[b;0];
pda=[pd,-10,-11];
coa=ctrb(aa,ba);rank(coa)
kt=place(aa,ba,pda)
kp=kt(:,1:3)
ks=kt(:,4:4)