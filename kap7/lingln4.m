clear 
disp('Gleichungssystem : A*z = b')
A = [-1 1; 1 1; -0.4 1]
b = [0; 2; 0.3]

disp('Gleichungssystem lösen')
z = A\b

disp('Probe: b1=A*z')
b1=A*z

disp('Gleichungssystem lösen')
z1 = mldivide(A,b)

disp('Probe: b1=A*z1')
b1=A*z1