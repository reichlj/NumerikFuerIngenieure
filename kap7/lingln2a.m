clear 
format long
disp('Gleichungssystem : A*x = b')
A = [1 2; 2 3.9999999999999995]
b = [3; 4]

disp('Determinante von A')
d = det(A)
x = A\b   %x=mldivide(A,b)
disp('Probe: b1=A*x')
b1 = A*x
fprintf('%.16f\n',b1)
