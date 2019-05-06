clear 
format long
disp('Gleichungssystem : A*z = b')
A = [-1 1; 1 1]
b = [2; 5]
disp('Gleichungsystem lösen')
z = mldivide(A,b)
disp('Probe: A*z=b')
b1 = A*z

