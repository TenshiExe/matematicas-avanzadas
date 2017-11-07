close all; clear all; clc; %limpiando

%% Graficando Campo Vectorial
figure(1)   %Figura 1
%Crea un espacio punteado en un intervalo deseado
[x,y] = meshgrid(-5:0.5:5);
m = sin(x); %Componente m
n = -y; %Componente n
%Grafica un vectores en forma de flecha con conponentes (m,n) en los puntos
%(x,y)
quiver(x,y,m,n)
hold on
grid on

%% Imprimiendo Figuras
% print -f1  -depsc CampoVec.eps