clear 
disp('Gleichungssystem : A*x = b')
A = [-1 1; 1 1; -0.4 1]
b = [0; 2; 0.3]

disp('Gleichungssystem l�sen')
x = A\b

disp('Probe: b1=A*x')
b1=A*x

disp('Gleichungssystem l�sen')
x1 = mldivide(A,b)

disp('Probe: b1=A*x1')
b1=A*x1