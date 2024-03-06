function[p]=pochodna()
%obliczanie pochodnej do funkcji podcalkowej w skrypcie calka2
syms x;
y=sin(pi*x*2/5)
p=diff(y)