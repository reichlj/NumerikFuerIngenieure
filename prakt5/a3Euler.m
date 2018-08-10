clear 
global w d
w = sqrt(3.0); % Kreisfrequenz
d = 0.2;       % Dämpfung

% Anfangswerte setzen
n=1;
t(n)=0;
y(n,1)=2.0;
y(n,2)=0.0;
% setze Funktion-Handle


% Iteration
dt = 0.01;  % Schrittweite
while ( t(n) < 30 )
  t(n+1) = t(n) + dt;
  % berechne die erste Ableitung
  % mit Hilfe des Function-Handles
     
  y(n+1,1)= y(n,1)     ; % ergänzen
  y(n+1,2)= y(n,2)     ; % ergänzen
  n = n+1;  
end

% Ergebnis graphisch darstellen
plot(t,y(:,1),t,y(:,2),'LineWidth',2);
txt = sprintf('y0=%.2f v0=%.2f w=%.2f d=%.2f',y(1,1),y(1,1),w,d);
title(txt);