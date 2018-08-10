clear
w = sqrt(3.0); % Kreisfrequenz
d = 0.2;       % Dämpfung

% Anfangswerte setzen
n=1;
t(n)=0;
y(n)=2.0;
v(n)=0.0;

% Iteration
dt = 0.01;  % Schrittweite
while ( t(n) < 30 )
   t(n+1) = t(n) + dt;
   % Eulerverfahren 
   y(n+1) = y(n) + v(n)*dt;
   v(n+1) = v(n) + (-2*d*v(n)- w*w*y(n))*dt;
   n = n+1;  
end

% Ergebnis graphisch darstellen
plot(t,y(:),t,v(:),'LineWidth',2);
txt = sprintf('y0=%.2f v0=%.2f w=%.2f d=%.2f',y(1),v(1),w,d);
title(txt);