w=5:35;
f = kraft1(0.35,40,w);
fprintf('Winkel   Kraft\n')
fprintf('%6.0f%8.3f\n',[w;f]);
[fmin,index] = min(f);
fprintf('Minimum: w=%3.0f Kraft=%8.3f\n',w(index),fmin);
fprintf('Mittelwert der Kräfte: %8.3f\n',mean(f));