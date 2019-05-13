clear; clc
% Aufgabe 2
A = [ 4 2 8 2;
      2 5 4 1;
      8 4 6 1;
      2 1 1 1];
% Teilaufgabe a
disp('Determinante von A:')
disp(det(A));
[V, D] = eig(A);
disp('Eigenwerte von A:')
fprintf('%7.2f\n',diag(D))
disp('Eigenvektoren von A:')
fprintf('%7.3f%7.3f%7.3f%7.3f\n',V')  

% Teilaufgabe b
prd=1;
for k=1:4
  prd = prd*D(k,k);
end
disp('Produkt der Eigenwerte:')
disp(prd)  
prd1 = prod(diag(D))

% Teilaufgabe c
disp('A*v2 - lambda2*v2')
v2=V(:,2);
fprintf('%15.10f\n',A*v2-D(2,2)*v2)
fprintf('A*v2-l2*v2 : %15.10f\n',norm(A*v2-D(2,2)*v2))

% Teilaufgabe d
disp('Skalarprodukt von v1 und v2')
v1=V(:,1);
fprintf('%15.10f\n',v1'*v2)
disp('Länge von v1')
disp( norm( v1 ) )
disp( sqrt( v1'*v1 ) )
disp( sqrt( dot(v1,v1) ) )
disp( sqrt( sum( v1.*v1 ) ) )

% Teilaufgabe e
disp('Vtransponiert*V')
disp(V'*V)
disp('Vtransponiert*A*V')
disp(V'*A*V)

% Teilaufgabe f
disp('Zerlegung des Vektors b=[1;2;3;4]')
disp('nach Eigenvektoren von A')
b = [1;2;3;4];
% löse das Gleichungssystem  V*a = b 
a = V\b;
% a = mldivide(V,b);
disp('Koeffizienten der Eigenvektoren')
for k=1:4
  fprintf('  a(%d) =%10.6f\n',k,a(k))
end

disp('Verifikation der Zerlegung von b')
%b1 = a(1)*V(:,1)+a(2)*V(:,2)+...+a(4)*V(:,4);
b1= V * a;
fprintf('%18.16f\n',b1);

% Teilaufgabe g
disp('Zerlegung von v1')
v1 = V(:,1);
av1 = V\v1;
disp(av1)
av2 = mldivide(V,v1)