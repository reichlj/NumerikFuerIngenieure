clear all
clc
fl = [ 5 6 7; 8, 9 10];
r = radius(fl);
disp('** absoluter Fehler **')
diff = fl - pi*r.*r;
absFehler = max(abs(diff(:)))
if absFehler < 1.0e-14
   disp('1e-14 :Ergebnis korrekt')
else
   disp('1e-14 :Ergebnis nicht korrekt')
end
if absFehler < 1.0e-15;
   disp('1e-15 :Ergebnis korrekt')
else
   disp('1e-15 :Ergebnis nicht korrekt')
end

disp('** relativer Fehler **')
diff = (fl - pi*r.*r)./fl
relFehler = max(abs(diff(:)))
if relFehler < 1.0e-15
   disp('rel. Fehler 1e-15 : Ergebnis korrekt')
else
   disp('rel. Fehler 1e-15 : Ergebnis nicht korrekt')
end
