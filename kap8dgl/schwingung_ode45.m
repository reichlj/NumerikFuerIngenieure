clear 
% globale Parameter der DGL
global k m;

k = 1;
m = 2;
% Anfangsbedingungen
y0 = 5.0;
v0 = 0;

% DGL lösen
[t, erg] = ode45(@schwingung,[0,100],[y0,v0]);

plot(t,erg, 'LineWidth',1.5); % Lösung zeichnen