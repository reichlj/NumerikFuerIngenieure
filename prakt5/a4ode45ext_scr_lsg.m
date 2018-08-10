clear
global w d w1 A;
w = 2.0;
d = 0.1;
w1 = 3.0;
A = 2;

% Anfangswerte
y0(1)=2;
y0(2)=0.0;

% Aufruf von ode45
%[t,y] = ode45(@a4gsdgl, [0,20], y0);
[t,y] = ode45(@a4gsdglext_lsg, [0:0.02:100], y0);

% Ergebnis graphisch darstellen
plot(t,y(:,1),t,y(:,2),'LineWidth',1);
txt = sprintf('y0=%.2f v0=%.2f w=%.2f d=%.2f w1=%.2f A=%.2f',...
               y0(1),y0(2),w,d,w1,A);
title(txt);

% Zeitabst�nde berechnen
disp('Zeitabstand bei t=0')
dta=t(2)-t(1)
disp('Zeitabstand am Ende')
dtb=t(end)-t(end-1)
disp('Anzahl der Zeitpunkte')
length(t)