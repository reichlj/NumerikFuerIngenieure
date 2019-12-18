clear; clc
% Aufgabe 1
% Teilaufgabe a
A = [ 4 2 8 2;
      7 5 4 1;
      8 4 6 1;
      2 1 3 1];
b = [ 1; 2; 3; 4];
disp('a) Matrix A')
fprintf('%6.1f%5.1f%5.1f%5.1f\n',A')  
disp('Vektor b')
fprintf('%6.1f\n',b)  

% Teilaufgabe b
disp('b) Determinante von A')
disp(det(A))

% Teilaufgabe c
disp('c) Lösung x1 mit Linksdivision berechnen')
x1= A\b;
fprintf('%8.4f\n',x1)  
disp('c) Lösung x2 mit mldivide berechnen')
x2= mldivide(A,b);
fprintf('%8.4f\n',x2)  

disp('c) Unterschied x1 und x2')
disp('Länge: x1 - x2')
disp(norm(x1-x2))

disp('c) Probe: b1 = A*x1')
b1 = A*x1;
fprintf('%8.4f\n',b1)  
disp('Länge: b1 - b')
disp(norm(b1-b))

% Teilaufgabe d
disp('d) Inverse Matrix von A')
IA = inv(A); 
disp(IA) 

% Teilaufgabe e
disp('e) Produkt IA*A')
EA = IA*A;
disp(EA)
EB = eye(4);
norm(EA(:)-EB(:))
norm( max( abs(EA(:)-EB(:)) ) )

% Teilaufgabe f
disp('f) x mit inverser Matrix berechnen')
x3 = IA*b;
disp(x3)

% Teilaufgabe g
B = 0.5*(A + A');
C = 0.5*(A - transpose(A));
disp('g) symmetrischer Anteil B:')
disp(B)
disp('g) schiefsymmetrischer Anteil C:')
disp(C)
disp('g) Summe B + C:')
disp(B+C)
