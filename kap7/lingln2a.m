clear 
format long
disp('Gleichungssystem : A*z = b')
A = [1 2; 2 3.9999999999999995]
b = [3; 4]

disp('Determinante von A')
d = det(A)
z = A\b   %z=mldivide(A,b)
disp('Probe: b1=A*z')
b1 = A*z
fprintf('%.16f\n',b1)
