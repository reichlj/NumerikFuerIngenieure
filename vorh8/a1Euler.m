clear 

k = input('Wert für k: ');
dx = input('Wert für dx: ');
xend = input('Endwert von x: ');
n = 1;
x(n) = 1;
y(n) = 3; % Anfangswert

while ( x(n) < xend )
   x(n+1) = x(n) + dx;
   % Euler-Näherung 
   y(n+1) = y(n) + k*x(n)*y(n)*dx;
   n = n+1;  
end
yexakt = 3*exp(0.5*k*(x.*x-1));
plot(x,y, x,yexakt, 'Linewidth',1.0);

fprintf('exakter Wert: y(%.1f)=%10.3e\n',x(end),yexakt(end))
fprintf('num.    Wert: y(%.1f)=%10.3e\n',x(end),y(end))
rf = abs( (y(end)-yexakt(end))/yexakt(end) );
fprintf('rel. Fehler : %.2e\n',rf)