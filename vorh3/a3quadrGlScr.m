clear
% löse die Gleichung
% 3*x*x + 9*x + 5 = 0
disp('Skalare')
a = 3; b = 9; c = 5;
[x1, x2] = a3quadrGl(a, b, c)

n1 = a*x1*x1 + b*x1 + c
n2 = a*x2*x2 + b*x2 + c

disp('2*3 Array - nur reelle Lösungen')
a = [3, 4, 5; 13, 14, 15];
b = [19, 20, 21; 22, 23, 34];
c = [5, 6, 7; 8, 9, 10];
[x1, x2] = a3quadrGl(a, b, c)
n1 = a.*x1.*x1 + b.*x1 + c
n2 = a.*x2.*x2 + b.*x2 + c

disp('2*3 Array - fast nur reelle Lösungen')
a = [3, 4, 5; 13, 14, 15];
b = [19, 20, 21; 22, 23, 24];
c = [5, 6, 7; 8, 9, 10];
[x1, x2] = a3quadrGl(a, b, c)
n1 = a.*x1.*x1 + b.*x1 + c
n2 = a.*x2.*x2 + b.*x2 + c

disp('2*3 Array - nur komplexe Lösungen')
a = [3, 4, 5; 13, 14, 15];
b = [9, 10, 11; 12, 13, 14];
c = [5, 6, 7; 8, 9, 10];
[x1, x2] = a3quadrGl(a, b, c)
n1 = a.*x1.*x1 + b.*x1 + c
n2 = a.*x2.*x2 + b.*x2 + c

maxDiff = max(abs( [ n1(:); n2(:) ]))
if maxDiff < 1e-14
   disp('Ergebnis korrekt')
else
   disp('Ergebnis nicht korrekt')
end

disp('viele Gleichungen')
N = 10000
a = rand(N,N);
b = 4 + rand(N,N);
c = 3*rand(N,N);
tic
[x1, x2] = a3quadrGl(a, b, c);
toc
n1 = a.*x1.*x1 + b.*x1 + c;
n2 = a.*x2.*x2 + b.*x2 + c;

maxDiff = max(abs( [ n1(:); n2(:) ]))
if maxDiff < 1e-13
   disp('Ergebnis korrekt')
else
   disp('Ergebnis nicht korrekt')
end
[ n1(:); n2(:) ];