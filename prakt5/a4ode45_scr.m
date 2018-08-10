clear 
global w d;
w = 2.0;
d = 0.05;

% Anfangswerte
y0(1)=2.0;
y0(2)=0.0;

% Aufruf von ode45


% Ergebnis graphisch darstellen


txt = sprintf('y0=%.2f v0=%.2f w=%.2f d=%.2f',y0(1),y0(2),w,d);
title(txt);

% Zeitabstände berechnen
