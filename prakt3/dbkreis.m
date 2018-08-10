function [ ] = dbkreis( )
%DBKREIS Umgang mit dem Debugger üben
disp('Uebung Debugger')

disp(' Zahl Quadrat')
% Schleife von 2 bis 4, Schrittweite 1
for k = 2:1:4
    quadrat = k*k;
    fprintf('%5d%8d\n',k,quadrat);
end

% 3 Zufallszahlen ziehen
% randi(N,1) liefert eine Zufallszahl 
% zwischen 1 und N
n=1;
while  n <= 3
  k = randi(100,1);
  fprintf('Zufallszahl k=%d\n',k);
  if ( k < 10 )
     disp(' k kleiner als 10');
  elseif (k <50)
     disp(' k >= 10 und k < 50');
  else
     disp(' k groesser gleich 50');
  end 
  n = n+1;
end

% Umfang und Fläche berechnen
rad = randi(100,1);

% Aufruf der Funktion dbumfang - siehe unten
u = dbumfang(rad);

% Aufruf der Funktion dbflaeche - siehe dbflaeche.m
fl = dbflaeche(rad);

fprintf('Radius  %10.3f\n', rad);
fprintf('Umfang  %10.3f\n', u);
fprintf('Flaeche %10.3f\n', fl);
end

% die Funktion dbumfang ist eine 
% sogenannte subfunction
function umf = dbumfang(r)
  umf = 2 * pi * r;
end