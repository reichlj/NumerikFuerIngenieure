clear 
format long
disp('Gleichungssystem : A*x = b')
A = [1 2; 2 3.9999999999999995]
b = [3; 4]

disp('Determinante von A')
d = det(A)
x = A\b
disp('Probe: A*x=b')
b1 = A*x
fprintf('%.16f\n',b1)
