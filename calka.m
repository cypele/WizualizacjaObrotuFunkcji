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


%Funkcja do obliczania całki we wzorze na objętości bryły obrotowej
% Argumentami naszej funkcji są:
% a=dolny koniec przedziału dziedziny
% b=górny koniec przedziału dziedziny
function[F_integral]=calka(a,b)

for n = [10000]
    f = @(x) (sin(pi*x*2/5))^2;   % definicja funkcji podcalkowej
    h = (b-a)/n;   % szerokosz przedzialow
    s = 1/2 * (f(a) + f(b));   
    % tworzenie petli do obliczania wartosci pomiedzy interwalami
    for i = 1 : n-1
        s = s + f(a + i*h);
    end
    A = h * s;   % suma wszystkich interwalow
    F_integral=A
end