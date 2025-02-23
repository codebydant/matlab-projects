%% Cálculo del jacobiano
syms x y u;
A_ja(x)=jacobian([y+u;x^3+5*x^2+6*x+y+2*u],[x,y]);
B_ja=jacobian([y+u;x^3+5*x^2+6*x+y+2*u],[u]);

for x=1:1:10;
    A=[0,1;3*x.^2+10*x+6,1];   
end

A1=[0 1;19 1];
A2=[0 1;38 1];
A3=[0 1; 63 1];
A4=[0 1; 94 1];
A5=[0 1; 131 1];
A6=[0 1; 174 1];
A7=[0 1; 223 1];
A8=[0 1; 278 1];
A9=[0 1; 339 1];
A10=[0 1; 406 1];

B=[1;2];
C=[1,0];
D=[0];
Pd=[-1+0.75i,-1-0.75i];

AA1=[A1,zeros(2,1);-C,0];
AA2=[A2,zeros(2,1);-C,0];
AA3=[A3,zeros(2,1);-C,0];
AA4=[A4,zeros(2,1);-C,0];
AA5=[A5,zeros(2,1);-C,0];
AA6=[A6,zeros(2,1);-C,0];
AA7=[A7,zeros(2,1);-C,0];
AA8=[A8,zeros(2,1);-C,0];
AA9=[A9,zeros(2,1);-C,0];
AA10=[A10,zeros(2,1);-C,0];

BA=[B;0];
Pda=[Pd,-5];

k1=place(AA1,BA,Pda);
k2=place(AA2,BA,Pda);
k3=place(AA3,BA,Pda);
k4=place(AA4,BA,Pda);
k5=place(AA5,BA,Pda);
k6=place(AA6,BA,Pda);
k7=place(AA7,BA,Pda);
k8=place(AA8,BA,Pda);
k9=place(AA9,BA,Pda);
k10=place(AA10,BA,Pda);

kp1_k1=k1(1); 
kp2_k1=k1(2); 
ki_k1=k1(3); 

kp1_k2=k2(1); 
kp2_k2=k2(2); 
ki_k2=k2(3); 

kp1_k3=k3(1); 
kp2_k3=k3(2); 
ki_k3=k3(3); 

kp1_k4=k4(1); 
kp2_k4=k4(2); 
ki_k4=k4(3); 

kp1_k5=k5(1); 
kp2_k5=k5(2); 
ki_k5=k5(3); 

kp1_k6=k6(1); 
kp2_k6=k6(2); 
ki_k6=k6(3); 

kp1_k7=k7(1); 
kp2_k7=k7(2); 
ki_k7=k7(3); 

kp1_k8=k8(1); 
kp2_k8=k8(2); 
ki_k8=k8(3); 

kp1_k9=k9(1); 
kp2_k9=k9(2); 
ki_k9=k9(3); 

kp1_k10=k10(1); 
kp2_k10=k10(2); 
ki_k10=k10(3); 

x1=[1 2 3 4 5 6 7 8 9 10];
k_1=[k1(1,1) k2(1,1) k3(1,1) k4(1,1) k5(1,1) k6(1,1) k7(1,1) k8(1,1) k9(1,1) k10(1,1)];
k_2=[k1(1,2) k2(1,2) k3(1,2) k4(1,2) k5(1,2) k6(1,2) k7(1,2) k8(1,2) k9(1,2) k10(1,2)];
k_i=[k1(1,3) k2(1,3) k3(1,3) k4(1,3) k5(1,3) k6(1,3) k7(1,3) k8(1,3) k9(1,3) k10(1,3)];

plot(x1,k_1);
grid on;
title('Curva de x1 vs k1');
xlabel('k1');
ylabel('x1');

figure,subplot(1,1,1),plot(x1,k_2);
grid on;
title('Curva de x1 vs k2');
xlabel('k2');
ylabel('x1');

figure(3),subplot(1,1,1),plot(x1,k_i);
grid on;
title('Curva de x1 vs ki');
xlabel('ki');
ylabel('x1');

[Polk1,s_k1]=polyfit(x1,k_1,4);
[Polk2,s_k2]=polyfit(x1,k_2,3);
[Polki,s_ki]=polyfit(x1,k_i,3)



