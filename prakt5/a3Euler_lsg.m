clear 
global w d
w = sqrt(3.0); % Kreisfrequenz
d = 0.2;       % Dämpfung
% Anfangswerte setzen
n=1;
t(n)=0;
y(n,1)=2.0;
y(n,2)=0.0;
fhd = @a3gedswdgl_lsg;
% Iteration
dt = 0.01;  % Schrittweite
while ( t(n) < 30 )
   t(n+1) = t(n) + dt;
   % Euler-Näherung 
   ypkt = fhd(t(n),y(n,:));
   % ypkt = a3gedswdgl_lsg(t(n),y(n,:));
   % ypkt = a3gedswdgl_lsg(t(n),[y(n,1),y(n,2)]);
   y(n+1,1)= y(n,1) + ypkt(1)*dt;
   y(n+1,2)= y(n,2) + ypkt(2)*dt;
   n = n+1;  
end

% Ergebnis graphisch darstellen
plot(t,y(:,1),t,y(:,2),'LineWidth',2);
txt = sprintf('y0=%.2f v0=%.2f w=%.2f d=%.2f',y(1,1),y(1,2),w,d);
title(txt);