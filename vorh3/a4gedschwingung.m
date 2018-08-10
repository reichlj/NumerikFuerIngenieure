function [t,x,v,a] = gedschwingung( time, n, xv, w0, delta )
%GEDSCHWINGUNG Berechne Auslenkung, Geschwindigkeit und Beschleunigung
%  Berechne Auslenkung, Geschwindigkeit und Beschleunigung
%  für eine gedämpfte Schwingung; siehe Wikipedia
%
%  Parameter :
%  time : Zeitintervall
%  n    : Anzahl der Punkte
%  xv   : Anfangsauslenkung und Geschwindigkeit
%  w0   : Kreisfrequenz der ungedämpften Schwingung
%  delta: Abklingkonstante
%
%  Ergebnisse :
%  t    : Zeitpunkte
%  x    : Auslenkung zum jeweiligen Zeitpunkt
%  v    : Geschwindigkeit zum jeweiligen Zeitpunkt
%  a    : Beschleunigung zum jeweiligen Zeitpunkt

x0 = xv(1);
v0 = xv(2);
% Kreisfrequenz der gedämpften Schwingung
wd = sqrt(w0^2-delta^2);

dt = (time(2)-time(1))/(n-1);
t = time(1):dt:time(2);
%t = linspace(time(1),time(2),n)

sinAmp = (v0+delta*x0)/wd;
x = exp(-delta*t).*(sinAmp*sin(wd*t)+x0*cos(wd*t));

v = -delta*exp(-delta*t).*(sinAmp*sin(wd*t)+x0*cos(wd*t))...
    +exp(-delta*t).*(wd*sinAmp*cos(wd*t)-x0*wd*sin(wd*t));

a = -2*delta*v-w0*w0*x;

end

