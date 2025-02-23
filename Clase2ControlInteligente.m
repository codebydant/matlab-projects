X=[0 0 1 1;
   0 1 0 1];      %Entradas combinaciones
D=[0 1 1 0];    %Salida esperada (epración XOR)
Red=newff(X,D,[10],{'tansig','tansig','trainlm'});  %fitfowrard, tercer parametro es la cantidad de neuronas en la capa oculta
                 %%tansig (función de activación de la capa oculta y de la
                 %%capa de salida),trainlm: metodo de entrenamiento de la
                 %%neurona
                 
                %DOS CAPAS OCULTAS DE NEURONAS     Red=newff(X,D,[5 5],{'tansig','tansig', 'tansig','trainlm'});
Red.dividefcn='';  %%Este comando obliga al programa utilizar todas las combinaciones de la tabla de entradas    
Red=train(Red,X,D);
Y=sim(Red,X);

%%Red.iw (Command window)-->Accede al peso de la matriz de la capa
%%Red.iw{1}-->Accede al contenido dentro de la celda de datos
%%Red.lw accede al peso de la capa de salida
%%Crear celda:
%Celda{1,1}='rna';
%Celda{1,2}=[1:10];
%%Celda{2,1}=eye(4);  matriz identidad
%%Para ver contenido de cada elemento de la celda se escribe Celda{2,2};
%%Para ver los baias  Red.b{2};