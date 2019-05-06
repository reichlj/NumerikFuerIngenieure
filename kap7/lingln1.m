clear 
format long
disp('Gleichungssystem : A*z = b')
A = [-1 1; 1 1]
b = [2; 5]

disp('Inverse von A berechnen')
IA = inv(A)

disp('Gleichungsystem lösen')
z = IA*b

disp('Probe: A*z=b')
b1 = A*z

disp('Probe: ist IA Inverse ?')
E1 = A*IA
E2 = IA*A

disp('Determinante von A und IA')
d1 = det(A)
d2 = det(IA)

% das Produkt der Determinanten einer Matrix 
% und seiner Inversen muss 1 ergeben
d3 = det(A)*det(IA)