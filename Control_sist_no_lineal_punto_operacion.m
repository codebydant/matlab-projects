syms x y u;
A_ja(x)=jacobian([y+u;x^3+5*x^2+6*x+y+2*u],[x,y]);
B=jacobian([y+u;x^3+5*x^2+6*x+y+2*u],[u]);
C=[1,0];
D=[0];
%% para x1e=1
%A=A_ja(1);
A=[0,1;19,1];
B=[1;2];
Pd=[-1+0.75i,-1-0.75i];
AA=[A,zeros(2,1);-C,0];
BA=[B;0];
Pda=[Pd,-5];
k=place(AA,BA,Pda);
kp1=k(1); 
kp2=k(2); 
ki=k(3); 

%% Con Observador de estados continuo
%SISTEMA EN VARIABLES DE ESTADO
A=[0,1;19,1];
B=[1;2];
C=[1,0];
D=[0];
%CONTROLABILIDAD
ob=obsv(A,C);
rank(ob);
co=ctrb(A,B);
rank(co);
%POLOS DESEADOS
Pd=[-1+0.75i,-1-0.75i];
%MATRICES AUMENTADAS
A_aum=[A,zeros(2,1);-C,0];
B_aum=[B;0];
Pol_des_aum=[Pd,-20];
Po=[-5,-6];
%CÁLCULO DE h
h=place(A',C',Po)';
%CÁLCULO DE k
k=place(A_aum,B_aum,Pol_des_aum);
kp=k(1:1,1:2);
ki=k(1:1,3:3);

