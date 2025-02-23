%construccion de un FIS por comandos
clear;
fis1 = newfis('penduloMan'); %crea un sistema de inferencia difuso, por defecto es Mamdani

fis1 = addvar(fis1,'input','error',[-pi pi]);

fis1 = addmf(fis1,'input',1,'muy_neg','trapmf',[-pi -pi -pi/2 -pi/4]);
fis1 = addmf(fis1,'input',1,'neg','trimf',[-pi/2 -pi/4 0]);
fis1 = addmf(fis1,'input',1,'cero','trimf',[-pi/4 0 pi/4]);
fis1 = addmf(fis1,'input',1,'pos','trimf',[0 pi/4 pi/2]);
fis1 = addmf(fis1,'input',1,'muy_pos','trapmf',[pi/4 pi/2 pi pi]);

fis1 = addvar(fis1,'input','derE',[-pi/2 pi/2]);

fis1 = addmf(fis1,'input',2,'muy_neg','trapmf',[-pi/2 -pi/2 -pi/4 -pi/8]);
fis1 = addmf(fis1,'input',2,'neg','trimf',[-pi/4 -pi/8 0]);
fis1 = addmf(fis1,'input',2,'cero','trimf',[-pi/8 0 pi/8]);
fis1 = addmf(fis1,'input',2,'pos','trimf',[0 pi/8 pi/4]);
fis1 = addmf(fis1,'input',2,'muy_pos','trapmf',[pi/8 pi/4 pi/2 pi/2]);

fis1 = addvar(fis1,'output','accion',[-10 10]);

fis1 = addmf(fis1,'output',1,'muyneg','trimf',[-30 -20 -10]); % funciones de pertenencia
fis1 = addmf(fis1,'output',1,'neg','trimf',[-20 -10 0]);
fis1 = addmf(fis1,'output',1,'quieta','trimf',[-10 0 10]);
fis1 = addmf(fis1,'output',1,'pos','trimf',[0 10 20]);
fis1 = addmf(fis1,'output',1,'muypos','trimf',[10 20 30]);

rulelist = [1 1 5 1 1               % input1 input2 output W conector => 1=and;2=OR 
            1 2 5 1 1
            1 3 5 1 1
            1 4 4 1 1
            1 5 3 1 1
            2 1 5 1 1
            2 2 5 1 1
            2 3 4 1 1
            2 4 3 1 1
            2 5 2 1 1
            3 1 5 1 1
            3 2 4 1 1
            3 3 3 1 1
            3 4 2 1 1 
            3 5 1 1 1
            4 1 4 1 1
            4 2 3 1 1
            4 3 2 1 1
            4 4 1 1 1
            4 5 1 1 1
            5 1 3 1 1
            5 2 2 1 1
            5 3 1 1 1
            5 4 1 1 1
            5 5 1 1 1];
        
fis1 = addrule(fis1,rulelist);
PenduloMan=fis1;

