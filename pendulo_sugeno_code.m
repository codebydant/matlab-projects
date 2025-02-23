%construccion de un FIS por comandos
%clear;
%crea un sistema de inferencia difuso
% se especifica el tipo para que sea Sugeno
fis1 = newfis('pendulo3','sugeno'); 

fis1 = addvar(fis1,'input','error',[-pi/2 pi/2]);

fis1 = addmf(fis1,'input',1,'muy_neg','trapmf',[-pi/2 -pi/2 -pi/4 -pi/8]);
fis1 = addmf(fis1,'input',1,'neg','trimf',[-pi/4 -pi/8 0]);
fis1 = addmf(fis1,'input',1,'cero','trimf',[-pi/8 0 pi/8]);
fis1 = addmf(fis1,'input',1,'pos','trimf',[0 pi/8 pi/4]);
fis1 = addmf(fis1,'input',1,'muy_pos','trapmf',[pi/8 pi/4 pi/2 pi/2]);

fis1 = addvar(fis1,'input','derE',[-1 1]);

fis1 = addmf(fis1,'input',2,'muy_neg','trapmf',[-1 -1 -0.5 -0.25]);
fis1 = addmf(fis1,'input',2,'neg','trimf',[-0.5 -0.25 0]);
fis1 = addmf(fis1,'input',2,'cero','trimf',[-0.25 0 0.25]);
fis1 = addmf(fis1,'input',2,'pos','trimf',[0 0.25 0.5]);
fis1 = addmf(fis1,'input',2,'muy_pos','trapmf',[0.25 0.5 1 1]);

fis1 = addvar(fis1,'output','accion',[-10 10]);

fis1 = addmf(fis1,'output',1,'muyneg','constant',[-10]); % funciones de pertenencia
fis1 = addmf(fis1,'output',1,'neg','constant',[-5]);
fis1 = addmf(fis1,'output',1,'quieta','constant',[0]);
fis1 = addmf(fis1,'output',1,'pos','constant',[5]);
fis1 = addmf(fis1,'output',1,'muypos','constant',[10]);

% input1 input2 output W conector => 1=and;2=OR 
rulelist = [1 1 5 1 1               
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
PenduloSug=fis1;


