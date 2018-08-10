clear
w = sqrt(3.0); % Kreisfrequenz
d = 0.2;       % D�mpfung
F = 1.5;       % St�rke der anregende Kraft
w1 = sqrt(0.4); % Kreisfrequenz der anregenden Kraft

% Anfangswerte setzen
n=1;
t(n)=0;
y(n,1)=2.0;  % Anfangsauslenkung
y(n,2)=0.0;  % Anfangsgeschwindigkeit

% Iteration
dt = 0.01;  % Schrittweite
while ( t(n) < 30 )
   t(n+1) = t(n) + dt;
   % Euler-Verfahren 
   y(n+1,1)= y(n,1) + y(n,2)*dt;
   y(n+1,2)= y(n,2) + ( -2*d*y(n,2) - w*w*y(n,1) + F*sin(w1*t(n)) )*dt;
   n = n+1;  
end

% Ergebnis graphisch darstellen
plot(t,y(:,1),t,y(:,2),'LineWidth',1.5);
txt = sprintf('y0=%.2f v0=%.2f w=%.2f d=%.2f w1=%.2f',y(1,1),y(1,2),w,d,w1);
title(txt);