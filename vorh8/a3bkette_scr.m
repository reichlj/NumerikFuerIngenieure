clear all
global cm
cm = input('Verh‰ltnis c/m ')
% Anfangsbedingungen
y0(1)=-1; % Auslenkung Masse 1
y0(2)=0.2;% Auslenkung Masse 2
y0(3)=0;  % Geschwindigkeit Masse 1
y0(4)=0;  % Geschwindigkeit Masse 2
[t,y]=ode45(@a3bkette_dgl,[0,50],y0);
% Ergebnis ausgeben Masse 1 darstellen
subplot(2,1,1)
plot(t,y(:,1),'LineWidth',1.5);
str=sprintf('x1=%.2f v1=%.2f c/m=%.2f',y0(1),y0(3),cm);
title(['Masse 1 : ',str])
% Masse 2 darstellen
subplot(2,1,2)
plot(t,y(:,2),'LineWidth',1.5);
str=sprintf('x2=%.2f v2=%.2f c/m=%.2f',y0(2),y0(4),cm);
title(['Masse 2 : ',str])

a=input('Starte Animation');
%Fenster schlieﬂen
close all
dt=0.1;
[t,y]=ode45(@a3akette_dgl,[0:dt:100],y0);

% Animation auf dem Bildschirm anzeigen
n=1;
while(n <= length(t))
  % aktuelle Position zeichnen
  plot([y(n,1)+1 y(n,2)+4],[0 0],'ro-','MarkerSize',30,'LINEWIDTH',3);
  hold on
  % Ruhelage zeichnen
  plot([1 4],[0 0],'k.','MarkerSize',50,'LINEWIDTH',2);
  hold off
  xlim([-1 6])
  ylim([-.5 0.5])
  title(sprintf('t=%.2f',t(n)))
  drawnow;
  pause(dt);
  n=n+1;
end