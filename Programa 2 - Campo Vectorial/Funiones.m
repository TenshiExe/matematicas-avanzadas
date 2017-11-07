clear all; close all; clc;  %limpiando

%% Graficando en 3D
%Toroide
t = 0:0.001:2*pi;   %vector tiempo
x = (4 + sin(20.*t)).*cos(t);   %funcion en x
y = (4 + sin(20.*t)).*sin(t);   %funcion en y
z = cos(20.*t); %funcion en z

figure(1)   %Figura 1
plot3(x,y,z,'-r')   %grafica en 3D
grid on

%nudo de trebol
t = 0:pi/100:4*pi;  %vector tiempo
x = (2 + cos(1.5.*t)).*cos(t);  %funcion en x
y = (2 + cos(1.5.*t)).*sin(t);  %funcion en y
z = sin(1.5.*t);    %funcion en z

figure(2)   %Figura 2
plot3(x,y,z,'-r')   %grafica en 3D
grid on     

%% Imprimiendo Figuras
% print -f1  -depsc Toroide.eps
% print -f2  -depsc Trebol.eps