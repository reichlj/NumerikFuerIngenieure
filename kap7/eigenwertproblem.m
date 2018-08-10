clear
% symmetrische Matrix
A = [1 2 3;
     2 3 4;
     3 4 6];
% Matrix des speziellen Eigenwertproblems ausgeben
% beachte : A' und nicht A ausgeben
fprintf('Matrix A\n');
fprintf('%6.2f%6.2f%6.2f\n',A');

EW = eig(A)

[V, D] = eig(A);
V
D

% verifiziere die Lösungen
for k=1:3  
  % Eigenwert und Eigenvektor ausgeben
  fprintf('***Eigenwert %d    : %7.3f\n',k,D(k,k));
  fprintf('     Eigenvektor  : %7.3f\n',V(:,k));
  
  % multipliziere Matrix A mit dem k-ten Eigenvektor
  aev = A*V(:,k);
  fprintf('  A*ev  : %7.3f\n',aev);
  
  % multipliziere k-ten Eigenwert mit k-ten Eigenvektor 
  ewev = D(k,k)*V(:,k);
  fprintf('  ew*ev : %7.3f\n',ewev);
  
  % Differenz der beiden letzten Vektoren muss 0 sein
  % d.h. aev ist tatsächlich Eigenvektor von A
  fprintf('  A*ev-ew*ev : %7.3f\n',aev-ewev);
end