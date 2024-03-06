%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Projekt Techniki Obliczeniowe
% Obliczanie objętości i pola powierzchni brył powstałych poprzez obrót
% wokół osi OX
%
% Wykonali Adam Cypliński i Jakub Mitura
% Data modfikacji 23.01.2022r.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Argumentami naszej funkcji są:
% a=dolny koniec przedziału dziedziny
% b=górny koniec przedziału dziedziny
% p=wektor współczynników wielomianu wejściowego
function[]=projekt(a,b)

 %dziedzina funkcji
 x=a:0.1:b;
 %deklaracja funkcji wejściowej
 y=sin(pi*x*2/5);
 %oś OZ
 z=y;
 %vektor współrzędnych X,Y,Z
%  v=[x y z];
 v=[x(:) y(:) z(:)];
 
 %Rysowanie funkcji wejściowej
 figure(1)
 subplot(2,1,1)
 plot(x,y,'r')
 grid on;
 xlabel('x-axis')
 ylabel('y-axis')
 title('Wykres funkcji wejściowej')
 
 %algorytm obrotu funkcji wokół osi OX
 %theta = zakres obrotu naszej funkcji
 for theta = 0:2/pi:2*pi
     %deklaracja wektoru obrotu
     R = [1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)];
     %wektor współrzędnych po 0obrocie o 0.01 stopnia
     vr=v*R;
     
     %przypisanie odpowiednich wspórzędnych do właściwych osi
     x=vr(:,1);
     y=(vr(:,2))/(sqrt(2));
     z=(vr(:,3))/(sqrt(2));
     
     %Rysowanie funkcji po odpowiednim obrocie
     figure(1)
     subplot(2,1,2)
     plot3(x,y,z); grid on; hold on
     xlabel('x-axis')
     ylabel('y-axis')
     zlabel('z-axis')
     title('Wykres funkcji po obrocie')
     axis([a-2 b+2 a-2 b+2 a-2 b+2]);
    
 end
 
 
%Obliczanie objętości oraz pola powierzchnii na podstawie własnych funkcji
%calka oraz calka2
V=pi*calka(a,b)
S=2*pi*calka2(a,b)

 
 