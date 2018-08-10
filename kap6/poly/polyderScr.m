clear 
% Koeffizienten für das Polynom definieren
koef = [1,-4 0,7];
% Ableitung des Polynoms berechnen
dy = polyder(koef)

disp('Extremwerte bestimmen - Nullstellen der Ableitung')
extrema = roots(dy)

disp('Ableitung an den Extrema')
dy_check = polyval(dy,extrema)

disp('Funktionswerte an den Extremstellen')
y_extrem = polyval(koef,extrema)