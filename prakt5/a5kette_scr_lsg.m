clear
% Anfangsbedingungen
y0(1)=-1; % Auslenkung masse 1
y0(2)=0;  % Geschwindigkeit masse 1
y0(3)=0.2;% Auslenkung masse 2
y0(4)=0;  % Geschwindigkeit masse 2
[t,y]=ode45(@a5kette_dgl_lsg,[0,50],y0);
% Ergebnis ausgeben Masse 1 darstellen
subplot(2,1,1)
plot(t,y(:,1),'LineWidth',1.5);
str=sprintf('x1=%6.2f v1=%6.2f',y0(1),y0(2));
title(['Masse 1: ',str])
% Masse 2 darstellen
subplot(2,1,2)
plot(t,y(:,3),'LineWidth',1.5);
str=sprintf('x2=%6.2f v2=%6.2f',y0(3),y0(4));
title(['Masse 2: ',str])
