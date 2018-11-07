fprintf('Winkel   Kraft\n')
fmin = kraft(0.35,70,5);
wmin = 5;
fsum = 0;
for w=5:35
    F = kraft(0.35,40,w);
    fsum = fsum + F;
    if F < fmin
       fmin = F;
       wmin = w;
    end
    fprintf('%6.0f%8.3f\n',w,F);
end
fprintf('Minimum: w=%3.0f Kraft=%8.3f\n',wmin,fmin);
fprintf('Mittelwert der Kräfte: %8.3f\n',fsum/31);