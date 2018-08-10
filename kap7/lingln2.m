clear 
format long
disp('Gleichungssystem : A*x = b')
A = [-1 1; -2 2]
b = [0; 4]

disp('Determinante von A')
d = det(A)

disp('Inverse von A berechnen')
IA = inv(A)

disp('Gleichungsystem lösen')
x = IA*b

disp('Probe: A*x=b')
b1 = A*x

disp('Probe: ist IA Inverse ?')
E1 = A*IA
E2 = IA*A

disp('Determinante von A und IA')
d1 = det(A)
d2 = det(IA)

% das Produkt der Determinanten einer Matrix 
% und seiner Inversen muss 1 ergeben
d3 = det(A)*det(IA)