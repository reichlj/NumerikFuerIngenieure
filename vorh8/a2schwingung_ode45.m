clear 
% globale Parameter der DGL
global w0 delta F wext

w0 = input('interne Frequenz ')
delta = input('Dämpfung ')
F = input('Anregungsstärke ')
wext = input('Anregungsfrequenz ')
% Anfangsbedingungen
y0 = input('Anfangsauslenkung ')
v0 = input('Anfangsgeschwindigkeit ')

% DGL lösen
[t, erg] = ode45(@a2schwingung,[0,30],[y0,v0]);

plot(t,erg, 'LineWidth',1.5); % Lösung zeichnen
txt = sprintf(...
    'y0=%.2f v0=%.2f w0=%.2f delta=%.2f F=%.2f wext=%.2f',...
    y0, v0, w0, delta, F, wext);
title(txt)