clear 
disp('Gleichungssystem : A*x = b')
A = [-1 1; 1 1; -0.5 1]
b = [0; 2; 0.5]

disp('Gleichungsystem lösen')
x = A\b

disp('Probe: A*x=b')
b1=A*x

disp('Gleichungssystem lösen')
x1 = mldivide(A,b)

disp('Probe: A*x1=b')
b1=A*x1