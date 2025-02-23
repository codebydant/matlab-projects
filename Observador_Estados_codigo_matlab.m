A=[-1,0;0,2];
B=[1;1];
C=[1,1];
Pd=roots([1,4,25]);
Pd=Pd';2
aa=[A,zeros(2,1);-C,0];
ba=[B;0];
Pda=[Pd,-20];
Po=[-10,-11];
h=place(A',C',Po);
h=h';
k=place(aa,ba,Pda);
kp=k(:,1:2);
ki=k(:,3:3);


