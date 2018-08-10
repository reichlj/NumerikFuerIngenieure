clear 
k = 1  % Federkonstante
m = 2; % Masse

n = 1
t(n) = 0;
y(n) = 5; %Anfangsauslenkung
v(n) = 0; % Anfangsgeschwindigkeit

dt = 0.01;  % Schrittweite
while ( t(n) < 10 )
   t(n+1) = t(n) + dt;
   % Euler-Näherung 
   y(n+1) = y(n) + v(n)*dt;
   v(n+1) = v(n) - k/m*y(n)*dt;
   n = n+1;  
end
plot(t,y,t,v);