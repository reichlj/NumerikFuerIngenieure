clear
global w0 delta;  % Parameter der DGL
w0 = 2*pi/2;      % Eigenfrequenz
delta = 0.25;     % Abklingkonstante
y0 = [-2.0; 0.0]; % Anfangsbedingung  
[t,erg]=ode45(@schwingungDgl,[0:0.02:10],y0);
plot(t,erg,'LINEWIDTH',2.0);
xlabel('t');  ylabel('x');
title('x und v als Funktion der Zeit');
[t, erg]   % Ausgabe von t, x und v