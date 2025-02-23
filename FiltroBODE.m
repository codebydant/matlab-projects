Fs1=1000;
Ts1=1/Fs1;
Fs2=500;
Ts2=1/Fs2;
num=[1 2 1];
den=[4 0 0];
dbode(num,den,Ts1);
grid on
hold on
dbode(num,den,Ts2);
