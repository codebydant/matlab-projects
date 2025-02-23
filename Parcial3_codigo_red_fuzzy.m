close all;
U1=Tf(1:end);
U2=F(1:end);
U3=Ti(1:end);
Y=T(1:end);
Phi=[Y(3:end-1),Y(2:end-2),Y(1:end-3),U1(2:end-2),U1(1:end-3),U2(2:end-2),U2(1:end-3),U3(2:end-2),U3(1:end-3)];
YReal=[Y(4:end)];
Datos=[Phi YReal];
%anfisedit;
%fuzzy(anfisfuzzy);

%%
tm=0.7;
ts=50;
Gs_num=[0.7296];
Gs_den=[2.5833 5.4540  0.6170];
Gs=tf(Gs_num,Gs_den);
Gf_num=[-1.0794 -2.0600];
Gf_den=[2.5833 5.4540 0.6170];
Gf=tf(Gf_num,Gf_den);
Gi_num=[0.3233 0.6170];
Gi_den=[2.5833 5.4540  0.6170];
Gi=tf(Gi_num,Gi_den);
Filtro_num=[1.652];
Filtro_den=[0.20 1];
Filtro_TrFcn=tf(Filtro_num,Filtro_den);

Gs_dis=c2d(Gs,tm,'zoh');
Gf_dis=c2d(Gf,tm,'zoh');
Gi_dis=c2d(Gi,tm,'zoh');
Filtro_dis=c2d(Filtro_TrFcn,tm,'zoh');
Tfijo=Gs*Filtro_TrFcn;
Tfijo_dis=c2d(Tfijo,tm,'zoh');

Plant_Model=Gs_dis*Filtro_dis+Gf_dis+Gi_dis;
