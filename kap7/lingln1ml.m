clear 
format long
disp('Gleichungssystem : A*x = b')
A = [-1 1; 1 1]
b = [2; 5]
disp('Gleichungsystem lösen')
x = mldivide(A,b)
disp('Probe: A*x=b')
b1 = A*x

