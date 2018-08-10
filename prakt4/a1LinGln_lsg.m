clear
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
disp('c) Lösung x berechnen')
x= A\b;
fprintf('%8.4f\n',x)  
disp('Verifikation A*x')
b1 = A*x;
fprintf('%8.4f\n',b1)  
x1 = mldivide(A,b)

% Teilaufgabe d
AINV = inv(A); 
disp('d) Inverse Matrix von A')
disp(AINV) 

% Teilaufgabe e
disp('e) Produkt AINV*A')
disp(AINV*A)

% Teilaufgabe f
disp('f) x mit inverser Matrix berechnen')
disp(AINV*b)