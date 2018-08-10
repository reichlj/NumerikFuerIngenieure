clear
w = sqrt(3.0); % Kreisfrequenz
d = 0.2;       % Dämpfung

% Stärke der anregenden Kraft

% Kreisfrequenz der anregenden Kraft


% Anfangswerte setzen
n=1;
t(n)=0;
y(n,1)=2.0; % Anfangsauslenkung
y(n,2)=0.0; % Anfangsgeschwindigkeit

% Iteration
dt = 0.01;  % Schrittweite
while ( t(n) < 30 )
   t(n+1) = t(n) + dt;
   % Eulerverfahren - Anregung berücksichtigen!
   y(n+1,1)= y(n,1) + y(n,2)*dt;
   y(n+1,2)= y(n,2) + ( -2*d*y(n,2) - w*w*y(n,1) )*dt;
   
   n = n+1;  
end

% Ergebnis graphisch darstellen
plot(t,y(:,1),t,y(:,2),'LineWidth',1.5);
txt = sprintf('y0=%.2f v0=%.2f w=%.2f d=%.2f',y(1,1),y(1,2),w,d);
title(txt);