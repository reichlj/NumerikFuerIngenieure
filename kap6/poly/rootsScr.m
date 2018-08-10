clear 
% Zeilenvektor
a = [ 1, -4, 0, 7 ]

disp('Nullstellen')
nst = roots(a)

disp('Funktionswerte an den Nullstellen')
y = polyval(a,nst)