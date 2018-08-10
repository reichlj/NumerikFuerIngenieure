clear
A = [ -1 1 1;
       1 2 1;
       3 1 1 ];
b = [0;2;3];

x1 = mldivide(A,b)
x2 = A\b
disp('Ergebnis �berpr�fen')
disp(' 1) A*x1-b ausgeben')
fprintf('%14.3e\n',A*x1-b)
disp(' 2) L�nge der Differenz')
laenge = norm(A*x1-b);
fprintf('    L�nge von A*x1-b: %.3e\n',laenge)
disp(' 3) Komponente mit gr��ter Abweichung')
maxabw = max(abs(A*x1-b));
fprintf('    Gr��te Abweichung: %.3e\n',maxabw)

da = det(A);
if abs(da) < 1e-10
   disp('Gleichungssystem nicht l�sbar')
   fprintf('Determinante %e\n',da)
else
   disp('Gleichungssystem stets l�sbar')
end
